//
//  AccessBindingView.swift
//  AccessBindingView
//
//  Created by nyannyan0328 on 2021/08/27.
//

import SwiftUI

struct AccessBindingView: View {
    
    @State var txtF = ""
    
    @State var names : [Name] = [
    
    Name(name: "A"),
    Name(name: "B"),
    Name(name: "C"),
    Name(name: "D"),
    
    ]
    var body: some View {
        NavigationView{
            
            List{
                
                
                ForEach($names){$name in
                    
                    TextField("", text: $name.name)
                    
                    
                }
                
                
                
            }
            .navigationTitle("NAMES")
            .listStyle(.insetGrouped)
            
            
        }
    }
}

struct Name : Identifiable{
    
    var id = UUID().uuidString
    var name : String
}

struct AccessBindingView_Previews: PreviewProvider {
    static var previews: some View {
        AccessBindingView()
    }
}
