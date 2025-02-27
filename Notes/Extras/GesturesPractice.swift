//
//  GesturesPractice.swift
//  Notes
//
//  Created by Jonathan Meixueiro on 27/02/25.
//

import SwiftUI

struct GesturesPractice: View {
    @State var color: Color = .black
    @State var offset: CGSize = .zero
    var body: some View {
        Circle()
            .foregroundStyle(color)
            .offset(offset)
            .onTapGesture(count: 2) {
                color = .red
            }
            .onLongPressGesture(minimumDuration: 3) {
                color = .blue
            }
            .gesture (
                DragGesture()
                    .onChanged { value in
                        offset = value.translation
                    }
            )
    }
}

#Preview {
    GesturesPractice()
}
