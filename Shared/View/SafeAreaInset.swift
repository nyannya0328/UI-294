//
//  SafeAreaInset.swift
//  SafeAreaInset
//
//  Created by nyannyan0328 on 2021/08/27.
//

import SwiftUI

struct SafeAreaInset: View {
    var body: some View {
     
        ScrollView{
            
            VStack{
                
                
                ForEach(1...100,id:\.self){index in
                    
                    
                    HStack{
                        
                        
                        
                        Circle()
                            .fill(.orange)
                            .frame(width: 20, height: 20)
                            .opacity(0.6)
                        
                        
                        VStack(alignment: .leading, spacing: 15) {
                            
                            
                            Rectangle()
                                .fill(.purple)
                                .frame(height: 18)
                            
                            Rectangle()
                                .fill(.red)
                                .frame(height: 18)
                                .padding(.trailing,60)
                        }
                    }
                    
                    
                    
                }
                
                
                
            }
            .padding()
            
        }
        .safeAreaInset(edge: .bottom) {
            
           Capsule()
                .fill(Color.orange)
                .frame(height: 60)
                .padding(.horizontal)
                .overlay(
                
                Text("Capusle")
                    .font(.largeTitle.weight(.thin))
                
                
                )
            
            
        }
            
            
          
    }
}

struct SafeAreaInset_Previews: PreviewProvider {
    static var previews: some View {
        SafeAreaInset()
    }
}
