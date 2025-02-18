//
//  ContentView.swift
//  Notes
//
//  Created by Jonathan Meixueiro on 18/02/25.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
//        VStack(alignment: .center, spacing: 20) {
//            Text("Don't")
//            Text("stop")
//            Text("believing")
//            Text("Don't stop believing")
//        }
//        HStack(alignment: .bottom, spacing: 20) {
//            Text("Don't")
//            Text("stop")
//                .font(.largeTitle)
//            Text("believing")
//            Text("Don't stop believing")
//        }
//        ZStack(alignment: .topLeading) {
//            Color.green
//            Circle()
//            Rectangle()
//                .foregroundStyle(Color.yellow)
//                .frame(width: 100, height: 100)
//            Text("Hello, World!")
//        }
//        ZStack(alignment: .center) {
//            Color.green
//            Circle()
//            HStack(spacing: 0) {
//                Rectangle()
//                    .foregroundStyle(Color.yellow)
//                    .frame(width: 100, height: 100)
//                Rectangle()
//                    .foregroundStyle(Color.red)
//                    .frame(width: 100, height: 100)
//            }
//            VStack {
//                Text("Hello")
//                Text("World!")
//            }
//        }
        
        // Little Card
        HStack {
            Text("Hello, world!")
                .font(.headline)
                .lineLimit(2)
                .frame(width: 100)
                .padding(8)
                .background(Color.cyan.opacity(0.2))
                .cornerRadius(8)
            Text("This is an example of a preview.")
                .font(.subheadline)
                .lineLimit(2)
                .multilineTextAlignment(.leading)
                .frame(width: .infinity)
            Image(systemName: "heart")
                .foregroundStyle(Color.red)
        }
        .padding()
        .background(Color.gray.opacity(0.1))
        .cornerRadius(16)
        
        // Big Card
        VStack {
            HStack {
                Spacer()
                Image(systemName: "heart")
                    .foregroundStyle(Color.red)
            }
            Text("Hello World")
                .font(.title2)
                .lineLimit(2)
                .padding(.vertical, 8)
                .padding(.horizontal, 30)
                .background(Color.cyan.opacity(0.2))
                .cornerRadius(8)
            Text("This is an example of a preview.")
                .font(.body)
                .lineLimit(2)
                .multilineTextAlignment(.leading)
                .frame(maxWidth: .infinity)
        }
        .frame(height: 150)
        .padding()
        .background(Color.gray.opacity(0.1))
        .cornerRadius(16)
    }
}

#Preview {
    ContentView()
}
