//
//  ContentView.swift
//  Animations
//
//  Created by Milo Wyner on 7/20/21.
//

import SwiftUI

struct ContentView: View {
    @State private var animationAmount: CGFloat = 1
    var body: some View {
        Button("Tap Me") {
//            animationAmount += 1
        }
        .padding(50)
        .background(Color.red)
        .foregroundColor(.white)
        .clipShape(Circle())
        .overlay(
            Circle()
                .stroke(Color.red)
                .scaleEffect(animationAmount)
                .opacity(Double(2 - animationAmount))
                .animation(
                    .easeInOut(duration: 1)
                        .repeatForever(autoreverses: false)
                )
        )
        .onAppear {
            animationAmount = 2
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
