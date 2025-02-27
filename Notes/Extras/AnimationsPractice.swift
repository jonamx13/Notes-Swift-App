//
//  AnimationsPractice.swift
//  Notes
//
//  Created by Jonathan Meixueiro on 27/02/25.
//

import SwiftUI

struct AnimationsPractice: View {
    @State var showGreen: Bool = false
    
    var body: some View {
        VStack {
            // Blue Circle
            Circle()
                .foregroundStyle(.cyan)
                .frame(width: 200, height: 200)
                .onTapGesture {
                    withAnimation {
                        showGreen.toggle()
                    }
                }
            
            // Green Circle (visible if showGreen is true)
            if showGreen {
                Circle()
                    .foregroundStyle(Color.green)
                    .frame(width: 200, height: 200)
//                    .transition(.slide) -> Appears from one border and exits towards the opposite border
//                    .transition(.scale) -> Appears scaling from its center
//                    .transition(.move(edge: .leading)) -> Appears sliding enter and exit from an specific side
//                    .transition(.asymmetric(insertion: .slide, removal: .scale)) -> Define a transition for entrance and exit
                    .transition(.asymmetric(insertion: .slide, removal: .scale))
            }
        }
    }
}

#Preview {
    AnimationsPractice()
}
