//
//  SwaipActionView.swift
//  SwaipActionView
//
//  Created by nyannyan0328 on 2021/08/25.
//

import SwiftUI

struct SwaipActionView: View {
    
    @State var system = "trash"
    var body: some View {
        List{
            
            ForEach(1...30,id:\.self){index in
                HStack{
                    
                    
                    Text("SWIP")
                        .font(.caption.bold())
                    
                    Spacer()
                    
                    
                    Image(systemName: "chevron.right")
                        .font(.system(size: 30, weight: .thin))
                    
                    
                }
                .swipeActions(edge: .trailing, allowsFullSwipe: false) {
                    
                    Button {
                        
                    } label: {
                        Image(systemName: "trash")
                        
                           
                    }
                    
                    Button {
                        
                    } label: {
                        Image(systemName: "checkmark")
                        
                    }

                }
                .tint(.purple)
                
                .swipeActions(edge: .leading, allowsFullSwipe: false) {
                    
                    
                    Button {
                        
                    } label: {
                        
                        
                        Image(systemName: "chevron.left")
                    }

                    
                    
                    
                }
                .tint(.yellow)
                
           
                
             
                
            }
            
            
            
        }
        .listStyle(.insetGrouped)
    }
}

struct SwaipActionView_Previews: PreviewProvider {
    static var previews: some View {
        SwaipActionView()
    }
}
