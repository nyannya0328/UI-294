//
//  TextCaseVie.swift
//  TextCaseVie
//
//  Created by nyannyan0328 on 2021/08/27.
//

import SwiftUI

struct TextCaseVie: View {
    var body: some View {
        
        
        VStack{
            
            Text("Emma **Watoson**")
                .font(.largeTitle)
            
            Text("Emma ***Watoson***")
                .font(.title)
            
            Text("""
                 EmmWatoson
                 [Google](https://www.google.com/?client=safari)
                 
                 """)
                .font(.title)
    
        
    }
}
}
struct TextCaseVie_Previews: PreviewProvider {
    static var previews: some View {
        TextCaseVie()
    }
}
