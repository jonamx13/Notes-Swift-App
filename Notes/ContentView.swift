//
//  ContentView.swift
//  Notes
//
//  Created by Jonathan Meixueiro on 18/02/25.
//

import SwiftUI

struct ContentView: View {
    
    @ViewBuilder
    func CardSmallView() -> some View {
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
    }
    
    @ViewBuilder
    func CardMediumView() -> some View {
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
    
    var body: some View {
        // Small cards carousel
        ScrollView(.horizontal) {
            HStack {
                ForEach(0..<63) { _ in
                    CardSmallView()
                }
            }
        }
        
        // Medium cards list
        ScrollView(.vertical) {
            VStack {
                ForEach(0..<63) { _ in
                    CardSmallView()
                    CardSmallView()
                    CardMediumView()
                }
            }
        }
    }
}

#Preview {
    ContentView()
}
