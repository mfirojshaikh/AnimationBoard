//
//  TransitionAnimation.swift
//  AnimationBoard
//
//  Created by Firoj on 16/01/24.
//

import SwiftUI

struct CommonFont: ViewModifier {
    func body(content: Content) -> some View {
        content.font(.title)
    }
}

struct TransitionAnimation: View {
    @State var isShowGreeting = false
    var body: some View {
        VStack(spacing: 16) {
            Text("Hello, Welcome to animation lab")
                .multilineTextAlignment(.center)
                .foregroundColor(isShowGreeting ? .red : .secondary)
            if isShowGreeting {
                Text("This is slide animation")
                    .transition(.slide)
                Text("This is opacity animation")
                    .transition(.opacity)
                Text("This is push from leading animation")
                    .transition(.push(from: .trailing))
                Text("This is offset animation")
                    .transition(.offset(x: -10, y: +50))
            }
            Button(!isShowGreeting ? "Show Animation" : "Hide Animation") {
                withAnimation(.easeOut(duration: 5).repeatForever()) { //you can remove this parameter to see text animations
                    isShowGreeting.toggle()
                }
            }
        }
        .modifier(CommonFont())
        .padding()
        .background(.mint)
        .cornerRadius(10)
        .shadow(radius: 10)
        .offset(y: isShowGreeting ? -100 : 200)
    }
}

struct TransitionAnimation_Previews: PreviewProvider {
    static var previews: some View {
        TransitionAnimation()
    }
}
