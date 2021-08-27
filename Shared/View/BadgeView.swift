//
//  BadgeView.swift
//  BadgeView
//
//  Created by nyannyan0328 on 2021/08/25.
//

import SwiftUI

struct BadgeView: View {
    @State var heartSeen : Bool = false
    var body: some View {
        TabView{
            
            CanVasView()
                .tabItem {
                    Image(systemName: "house.fill")
                }
                .badge(10)
                
            
         AsynImage()
                .tabItem {
                    Image(systemName: "gear")
                      
                }
                .onAppear(perform: {
                    heartSeen = true
                })
                .badge(heartSeen ? 20 : 10)
            
            Color.green
                .tabItem {
                    Image(systemName: "suit.heart.fill")
                }
                .badge(11)
            
        }
    }
}

struct BadgeView_Previews: PreviewProvider {
    static var previews: some View {
        BadgeView()
    }
}
