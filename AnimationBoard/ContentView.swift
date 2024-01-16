//
//  ContentView.swift
//  AnimationBoard
//
//  Created by Firoj on 16/01/24.
//

import SwiftUI

struct ContentView: View {
    @State var isShowGreeting = false
    var body: some View {
        VStack {
            Image(systemName: "globe")
                .imageScale(.large)
                .foregroundColor(.accentColor)
            
            if isShowGreeting {
                Text("Hello, world!")
                    .transition(.opacity)
            }
        }
        .font(.title)
        .onTapGesture {
            withAnimation(.spring()) {
                isShowGreeting.toggle()
            }
        }
        .padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
