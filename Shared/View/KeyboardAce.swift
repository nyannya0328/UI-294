//
//  KeyboardAce.swift
//  KeyboardAce
//
//  Created by nyannyan0328 on 2021/08/27.
//

import SwiftUI

struct KeyboardAce: View {
    @FocusState  var shoKey : Bool
    var body: some View {
        NavigationView{
            
            VStack{
                
                TextField("", text: .constant(""))
                    .textFieldStyle(.roundedBorder)
                    .padding()
                    .focused($shoKey)
                
                
                
                Text(shoKey ? "showKey" : "FocusState")
                    .font(.largeTitle)
                    
                
                
            }
            .toolbar(content: {
                ToolbarItem(placement: .keyboard) {
                    
                    HStack{
                        
                        Button {
                            
                        } label: {
                            
                            Image(systemName: "gear")
                                .font(.callout)
                            
                        }
                        
                        Spacer()
                        
                        ScrollView(.horizontal, showsIndicators: false) {
                            
                            
                            HStack{
                                
                                
                                ForEach(1...10,id:\.self){index in
                                    
                                    Capsule()
                                        .fill(Color.red)
                                        .frame(width: 10, height: 10)
                                    
                                    
                                }
                            }
                        }

                        
                        
                    }
                    
                    
                }
            })
            
            .navigationTitle("TF Foucues")
            
            
        }
    }
}

struct KeyboardAce_Previews: PreviewProvider {
    static var previews: some View {
        KeyboardAce()
    }
}
