//
//  AsynImage.swift
//  AsynImage
//
//  Created by nyannyan0328 on 2021/08/25.
//

import SwiftUI

struct AsynImage: View {
    let url = URL(string: "https://images.unsplash.com/photo-1629831676333-8e33b2d7cdd9?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=1950&q=80")!
    var body: some View {
        NavigationView{
            
            VStack{
                
                AsyncImage(url: url, scale: 1.0){phase in
                    
                    if let image = phase.image{
                        
                        
                        image
                            .resizable()
                            .aspectRatio( contentMode: .fill)
                            .frame(width: 300, height: 300)
                            .cornerRadius(20)
                            .overlay(
                            
                            
                            Text("Unsplash Image")
                                .foregroundColor(.white)
                                .padding()
                            
                            ,alignment:.bottomTrailing
                            
                            )
                           
                    }
                    
                    else{
                        
                        ProgressView()
                            .padding()
                            .background(.green.opacity(0.3),in: Capsule())
                        
                    }
                    
                    
                }
                
                
                
            }
            .navigationTitle("Unsplash Image")
            
        }
    }
}

struct AsynImage_Previews: PreviewProvider {
    static var previews: some View {
        AsynImage()
    }
}
