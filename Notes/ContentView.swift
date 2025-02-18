//
//  ContentView.swift
//  Notes
//
//  Created by Jonathan Meixueiro on 18/02/25.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        Image("logo")
            .resizable()
            .aspectRatio(contentMode: .fit)
            .frame(width: 200, height: 200)
            .foregroundColor(Color.yellow)
            .background(Color.gray)
        Button(action: {}) {
            Image("logo")
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 50, height: 50)
                .padding()
            Text("Press wolf button")
                .font(.headline)
                .foregroundStyle(Color.white)
                .multilineTextAlignment(.leading)
                .padding()
                .frame(maxWidth: .infinity)
        }
        .background(Color.black)
        .cornerRadius(100)
        .padding(.horizontal)
    }
}

#Preview {
    ContentView()
}
