//
//  SearchView.swift
//  SearchView
//
//  Created by nyannyan0328 on 2021/08/25.
//

import SwiftUI

struct SearchView: View {
    var name = ["MLB","Shohey","Miyaji","Manami","愛美"]
    
    
    var filterWord : [String]{
        
        
        seachTxt.isEmpty ? name : name.filter{
            
            $0.lowercased().contains(seachTxt.lowercased())
            
            
        }
        
        
        
    }
    
    
    
@State var seachTxt = ""
    var body: some View {
        NavigationView{
            
            
            List{
                
                
                ForEach(filterWord,id:\.self){name in
                    
                    
                    Text(name)
                        .foregroundColor(.primary)
                    
                    
                    
                }
                .listRowBackground(
                
                
                
                LinearGradient(colors: [
                
                    .orange.opacity(0.3),
                    .green.opacity(0.3)
                    ,.purple.opacity(0.1)
                
                ], startPoint: .topLeading, endPoint: .bottomLeading)
                
                
                
                
                
                
                )
            
                
                
                
                
                
            }
         
            .searchable(text: $seachTxt, prompt: Text("Search")){
               
                
                
                
                    
                }
                
                
            }
            .navigationTitle("Search")
            
            
        }
    }

struct SearchView_Previews: PreviewProvider {
    static var previews: some View {
        SearchView()
    }
}
