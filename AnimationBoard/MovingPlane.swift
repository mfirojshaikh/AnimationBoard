//
//  MovingPlane.swift
//  AnimationBoard
//
//  Created by Firoj on 18/01/24.
//

import SwiftUI

struct MovingPlane: View {
    @State var animatePlane = false
    var body: some View {
        
        VStack {
            Button("Animate plane") {
                // .easeIn - start show then become fast
                // .easeOut - start fast then become slow
                // .easeInOut - start and stop fast become slow in middle
                // .sprint - will make some bounce at the end
                withAnimation(.spring(response: 0.5, dampingFraction: 0.3, blendDuration: 1.0)) {
                    animatePlane.toggle()
                }
            }
            HStack {
                Text("🛬") // cmd+fun+ctr+space to change emoji
                    .font(.custom("Arial", size: 150))
                    .offset(x: animatePlane ? UIScreen.main.bounds.width - 150 : 0)
                Spacer()
            }
        }
    }
}

struct MovingPlane_Previews: PreviewProvider {
    static var previews: some View {
        MovingPlane()
    }
}
