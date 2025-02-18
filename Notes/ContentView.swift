//
//  ContentView.swift
//  Notes
//
//  Created by Jonathan Meixueiro on 18/02/25.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
//        Text("Don't stop believing")
//            .font(.system(size: 50))
//            .lineLimit(2)
//            .multilineTextAlignment(.trailing)
//            .bold()
//            .underline().bold()]
        
//        Circle()
//            .background(Color.green)
//            .padding()
//            .background(Color.red)
//            .frame(width: 200, height: 200)
        
//            Rectangle()
//            .frame(width: 200, height: 200)
//            .foregroundStyle(Color.yellow)
//            .cornerRadius(100)
//            .opacity(0.5)
        
//        Ellipse()
//            .stroke(lineWidth: 5)
//            .frame(width: 200, height: 400)
//            .foregroundStyle(Color.red)
//            .rotationEffect(.degrees(45))
        
        /*Challenge: Create button with text and frame*/
        Button(action: {}) {
            Text("Press me")
                .font(.headline)
                .foregroundColor(.white)
                .padding()
                .frame(maxWidth: .infinity)
        }
        .background(Color.blue)
        .cornerRadius(30)
        .padding(.horizontal)
    }
}

#Preview {
    ContentView()
}
