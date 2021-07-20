//
//  ContentView.swift
//  Animations
//
//  Created by Milo Wyner on 7/20/21.
//

import SwiftUI

struct ContentView: View {
    @State private var animationAmount = 0.0
    
    var body: some View {
        Button("Tap Me") {
            withAnimation {
                animationAmount += 360
            }
        }
        .padding(50)
        .background(Color.red)
        .foregroundColor(.white)
        .clipShape(Circle())
        .rotation3DEffect(
            .degrees(animationAmount),
            axis: (x: 0, y: 1, z: 0)
        )
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
