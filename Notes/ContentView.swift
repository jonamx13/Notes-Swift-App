//
//  ContentView.swift
//  Notes
//
//  Created by Jonathan Meixueiro on 18/02/25.
//

import SwiftUI

struct NCard: Identifiable {
    let id = UUID()
    let title: String
    let text: String
    let type: NCardType
}

enum NCardType {
    case small
    case medium
}

struct ContentView: View {
    let cards: [NCard] = [
        NCard(title: "Card 1", text: "Text for the CARD 1", type: .small),
        NCard(title: "Card 2", text: "Text for the CARD 2", type: .medium),
        NCard(title: "Card 3", text: "Text for the CARD 3", type: .small),
        NCard(title: "Card 4", text: "Text for the CARD 4", type: .small)
    ]
    
    @ViewBuilder
    func CardSmallView(card: NCard) -> some View {
        // Little Card
        HStack {
            Text(card.title)
                .font(.headline)
                .lineLimit(2)
                .frame(width: 120)
                .padding(8)
                .background(Color.cyan.opacity(0.2))
                .cornerRadius(8)
            Text(card.text)
                .font(.subheadline)
                .lineLimit(2)
                .multilineTextAlignment(.leading)
                .frame(maxWidth: .infinity)
            Image(systemName: "heart")
                .foregroundStyle(Color.red)
        }
        .padding()
        .background(Color.gray.opacity(0.1))
        .cornerRadius(16)
        .listRowSeparator(.hidden)
    }
    
    @ViewBuilder
    func CardMediumView(card: NCard) -> some View {
        // Big Card
        VStack {
            HStack {
                Spacer()
                Image(systemName: "heart")
                    .foregroundStyle(Color.red)
            }
            Text(card.title)
                .font(.title2)
                .lineLimit(2)
                .padding(.vertical, 8)
                .padding(.horizontal, 30)
                .background(Color.cyan.opacity(0.2))
                .cornerRadius(8)
            Text(card.text)
                .font(.body)
                .lineLimit(2)
                .multilineTextAlignment(.leading)
                .frame(maxWidth: .infinity)
        }
        .frame(height: 150)
        .padding()
        .background(Color.gray.opacity(0.1))
        .cornerRadius(16)
        .listRowSeparator(.hidden)
    }
    
    var body: some View {
        List {
            ForEach(cards) { card in
                switch card.type {
                case .small:
                    CardSmallView(card: card)
                case .medium:
                    CardMediumView(card: card)
                }
            }
        }
        .listStyle(.plain)
    }
}

#Preview {
    ContentView()
}
