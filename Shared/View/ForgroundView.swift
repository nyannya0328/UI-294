//
//  ForgroundView.swift
//  ForgroundView
//
//  Created by nyannyan0328 on 2021/08/27.
//

import SwiftUI

struct ForgroundView: View {
    var body: some View {
        VStack{
            
            Text("A")
                .foregroundStyle(.primary)
            Text("B")
                .foregroundStyle(.secondary)
            Text("C")
                .foregroundStyle(.tertiary)
            Text("D")
                .foregroundStyle(.quaternary)
            
        }
        .foregroundStyle(.red)
    }
}

struct ForgroundView_Previews: PreviewProvider {
    static var previews: some View {
        ForgroundView()
    }
}
