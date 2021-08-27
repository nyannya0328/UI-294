//
//  PresenTationView.swift
//  PresenTationView
//
//  Created by nyannyan0328 on 2021/08/27.
//

import SwiftUI

struct PresenTationView: View {
    @State var show = false
    
    @State var on = false
    
    var body: some View {
     
        VStack{
            
            
            Toggle(isOn: $on) {
                
                Text("Toggle")
                
            }
            .toggleStyle(.button)
            .controlSize(.large)
            .tint(.purple)
            
            Spacer()
            
            
            Button {
                withAnimation{
                    
                    show.toggle()
                }
            } label: {
                Text("presenTation")
                    .font(.largeTitle)
            }
            .buttonStyle(.borderedProminent)
            .controlSize(.regular)
            .tint(.red.opacity(0.3))

        }
        .sheet(isPresented: $on) {
            
            Text("Next")
     .interactiveDismissDisabled(true)
        }
        
    }
}

struct PresenTationView_Previews: PreviewProvider {
    static var previews: some View {
        PresenTationView()
    }
}
