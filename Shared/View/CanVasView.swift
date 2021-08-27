//
//  CanVasView.swift
//  CanVasView
//
//  Created by nyannyan0328 on 2021/08/24.
//

import SwiftUI
import Lottie

struct CanVasView: View {
    
    @State var show = false
    var body: some View {
        
        
        ZStack{
            

             animationView()
             
                .scaleEffect(0.2)
       
                .offset(x: 60, y: 60)
                .rotationEffect(Angle(degrees: show ? -50 : 0))
            
              
            
            
            animationView()
               .scaleEffect(0.2)
               .offset(x: -60, y: -60)
               .rotationEffect(Angle(degrees: show ? -50 : 0))

        

            Canvas { context, size in


                context.draw(Text("A"),at: CGPoint(x: size.width / 2, y: size.height / 2))
                
                


            }


        }
        
        .frame(width: 300, height: 300)
        .background(.linearGradient(colors: [.red,.green,.orange], startPoint: .topLeading, endPoint: .bottomTrailing),in: RoundedRectangle(cornerRadius: 20))
        .animation(.spring(response: 0.6, dampingFraction: 0.6, blendDuration: 0.8), value: show)
    .rotationEffect(Angle(degrees: show ? 360 : 0))
        .onAppear{
            withAnimation(.linear.speed(1).delay(1)  .repeatForever(autoreverses: true)){
                
                
                show.toggle()
            }
        }
   
       
     
    }
}

struct CanVasView_Previews: PreviewProvider {
    static var previews: some View {
        CanVasView()
    }
}


struct animationView : UIViewRepresentable{
    
    
    let animation = AnimationView(name: "72804-power-sticker",bundle: .main)
    
    
    func makeUIView(context: Context) -> AnimationView {
        animation.play()
        animation.loopMode = .loop
        animation.contentMode = .scaleToFill
        
    
        return animation
        
    }
    func updateUIView(_ uiView: AnimationView, context: Context) {
        
    }
    
}

