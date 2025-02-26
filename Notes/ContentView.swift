//
//  ContentView.swift
//  Notes
//
//  Created by Jonathan Meixueiro on 18/02/25.
//

import SwiftUI

struct ContentView: View {
    let cards: [NCard] = [
        NCard(title: "Card 1", text: "Text for the CARD 1", type: .small, isFavorite: true),
        NCard(title: "Card 2", text: "Text for the CARD 2", type: .medium, isFavorite: false),
        NCard(title: "Card 3", text: "Text for the CARD 3", type: .small, isFavorite: true),
        NCard(title: "Card 4", text: "Text for the CARD 4", type: .small, isFavorite: false)
    ]
    
    var body: some View {
        NListView()
    }
}

#Preview {
    ContentView()
}
