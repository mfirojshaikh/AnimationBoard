//
//  NotificationViewAnimation.swift
//  AnimationBoard
//
//  Created by Firoj on 18/01/24.
//

import SwiftUI

struct NotificationViewAnimation: View {
    @State var showNotification = false
    var body: some View {
        VStack(spacing: 16) {
            NotificationView()
                .offset(y: showNotification ? -300 : -500)
            Button("Show notification") {
                withAnimation(.spring(response: 0.5, dampingFraction: 0.5, blendDuration: 0.1)) {
                    showNotification.toggle()
                }
            }
        }
    }
}

struct NotificationView_Previews: PreviewProvider {
    static var previews: some View {
        NotificationViewAnimation()
    }
}

struct NotificationView: View {
    var bounds: CGRect {
        UIScreen.main.bounds
    }
    
    var body: some View {
        Text("Hello, World!")
            .frame(width: bounds.width - 40, height: 100)
            .background(.mint)
            .foregroundColor(.white)
            .cornerRadius(10)
    }
}
