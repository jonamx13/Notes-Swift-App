//
//  NCardView.swift
//  Notes
//
//  Created by Jonathan Meixueiro on 18/02/25.
//

import SwiftUI

struct NCardView: View {
    
    let card: NCard
    
    @ViewBuilder
    func CardSmallView() -> some View {
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
    func CardMediumView() -> some View {
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
        switch card.type {
        case .small:
            CardSmallView()
        case .medium:
            CardMediumView()
        }
    }
}

#Preview {
    VStack {
        NCardView(
            card:
                NCard(title: "Grocery Shopping List", text: "Milk, Bread, Eggs, Cheese, Apples, Carrots, and a few spices.", type: .small))
        
        NCardView(
            card:
                NCard(title: "Meeting with Marketing Team", text: "Monday: do some stuff on monday. \nTuesday: do some more stuff on tuesday.", type: .small))
        
        NCardView(
            card:
                NCard(title: "Meeting with Marketing Team", text: "Discuss Q1 goals, review social media strategy and allocate budget.", type: .medium))
        
        NCardView(
            card:
                NCard(title: "Grocery Shopping List", text: "Milk, Bread, Eggs, Cheese, Apples, Carrots, and a few spices.", type: .medium))
        
    }
}
