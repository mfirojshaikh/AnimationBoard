//
//  FanbladesAnimationView.swift
//  AnimationBoard
//
//  Created by Firoj on 16/01/24.
//

import SwiftUI

struct FanbladesAnimationView: View {
    @State private var startFan = false
    @State private var degrees = 0.0
    @State private var color: Color = .red
    var body: some View {
        Image(systemName: "fanblades")
            .resizable()
            .font(.title)
            .frame(width: 200, height: 200)
            .foregroundColor(color)
            .rotationEffect(.degrees(degrees))
            .onTapGesture {
                Timer.scheduledTimer(withTimeInterval: 0.005, repeats: true, block: { _ in
                    if degrees < 360 {
                        degrees += 1
                    } else {
                        degrees = 0
                    }
                    if (degrees.truncatingRemainder(dividingBy: 90)) == 0.0 {
                        color = Color.random()
                    }
                })
                withAnimation(.linear) {
                    startFan.toggle()
                }
            }
    }
}

extension Color {
    static func random() -> Color {
        let red = Double.random(in: 0...1)
        let green = Double.random(in: 0...1)
        let blue = Double.random(in: 0...1)
        return Color(red: red, green: green, blue: blue)
    }
}

struct FanbladesAnimationView_Previews: PreviewProvider {
    static var previews: some View {
        FanbladesAnimationView()
    }
}
