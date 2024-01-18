//
//  CombineAnimations.swift
//  AnimationBoard
//
//  Created by Firoj on 18/01/24.
//

import SwiftUI

struct CombineAnimations: View {
    @State var isAnimate = false
    var body: some View {
        VStack {
            Spacer()
            Text("🐦")
                .font(.custom("Arial", size: 150))
                .scaleEffect(isAnimate ? 2 : 1)
                .rotationEffect(.degrees(isAnimate ? 360.0 : 0.0))
            Spacer()
            Button("show Animation") {
                withAnimation(.interpolatingSpring(mass: 1.0, stiffness: 100.0, damping: 10, initialVelocity: 0)) {
                    isAnimate.toggle()
                }
            }
            .padding()
            .ignoresSafeArea(.all)
            .background(.cyan)
            .foregroundColor(.white)
        }
    }
}

struct CombineAnimations_Previews: PreviewProvider {
    static var previews: some View {
        CombineAnimations()
    }
}
