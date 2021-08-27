//
//  AccesBindeing.swift
//  AccesBindeing
//
//  Created by nyannyan0328 on 2021/08/25.
//

import SwiftUI

struct AccesBindeing: View {
    
    @State var  persons : [perSon] = [
    
    perSon(perSonName: "MLB"),
    
    perSon(perSonName: "Shohey"),
    
    perSon(perSonName: "Miyaji"),
    
    perSon(perSonName: "Manami"),
    
    perSon(perSonName: "愛美"),
    
    
    
    
    
    ]
    var body: some View {
        List{
            
            
            ForEach($persons){$person in
                
                
                TextField("", text: $person.perSonName)
            }
            
            
        }
    }
}

struct perSon : Identifiable{
    
    var id = UUID().uuidString
    var perSonName: String
}

struct AccesBindeing_Previews: PreviewProvider {
    static var previews: some View {
        AccesBindeing()
    }
}
