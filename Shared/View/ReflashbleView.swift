//
//  ReflashbleView.swift
//  ReflashbleView
//
//  Created by nyannyan0328 on 2021/08/25.
//

import SwiftUI

struct ReflashbleView: View {
    var json = URL(string: "https://jsonplaceholder.typicode.com/users")!
    
    @State var users :[ User] = []
    
    @State var reflaShableearch = ""
    
    var body: some View {
        NavigationView{
            
            List{
                
                
                ForEach(users){user in
                    
                    
                    VStack(alignment: .leading, spacing: 15) {
                        
                        
                        Text(user.username)
                        
                        Text(user.email)
                        
                    }
                    
                    .listRowSeparatorTint(.red)
                    .listRowBackground(Color.purple.opacity(0.3))
                }
                
                
              
              
                
                
            }
         
            
            .searchable(text: $reflaShableearch, prompt: Text("Search"), suggestions: {
                
                
                ForEach(users.filter{user in
                    
                    
                    
                    reflaShableearch == "" ? true : user.email.lowercased().contains(reflaShableearch.lowercased())
                    
                    
                    
                    
                    
                    
                }
                
                
                
                
                ){user in
                    
                    
                    Text(user.email)
                        .searchCompletion(user.username)
                    
                    
                }
                
                
            })
            
            .refreshable {
                
               await  fetchUsers()
                
                
            }
            .navigationTitle("JSON")
            
            
        }
        
    }
    
 func fetchUsers()async{
        
        let session = URLSession(configuration: .default)
        
        
        do{
            
            let task  = try await session.data(from: json)
            
            
            let users = try JSONDecoder().decode([User].self, from: task.0)
            
            self.users = users
            
            
        }
        
        catch{
            
            print("ERROR")
            
            
        }
        
        
    }
}


struct User :Identifiable,Decodable{
    var id :Int
    var username : String
    var email : String
    
    
}
struct ReflashbleView_Previews: PreviewProvider {
    static var previews: some View {
        ReflashbleView()
    }
}

