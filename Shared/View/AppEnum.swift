//
//  AppEnum.swift
//  AppEnum
//
//  Created by nyannyan0328 on 2021/08/27.
//

import SwiftUI

struct AppEnum: View {
    @AppStorage("ABC") var alphabet : ABC?
    var body: some View {
        
        
        VStack{
            
            if let abc = alphabet{
                
                Text(abc.rawValue)
            }
            
            Button {
                alphabet = .c
            } label: {
                Text("Change")
            }

            
            
        }
        
    }
}

enum ABC : String{
    
    case a = "A"
    case b = "B"
    case c = "C"
}

struct AppEnum_Previews: PreviewProvider {
    static var previews: some View {
        AppEnum()
    }
}
