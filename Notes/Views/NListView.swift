//
//  NListView.swift
//  Notes
//
//  Created by CIET1 on 18/02/25.
//

import SwiftUI

struct NListView: View {
    let cards: [NCard] = [
        NCard(title: "Card 1", text: "Text for the CARD 1", type: .small, isFavorite: true),
        NCard(title: "Card 2", text: "Text for the CARD 2", type: .medium, isFavorite: false),
        NCard(title: "Card 3", text: "Text for the CARD 3", type: .small, isFavorite: true),
        NCard(title: "Card 4", text: "Text for the CARD 4", type: .small, isFavorite: false)
    ]
    
    @State var showSheet: Bool = false
    
    var body: some View {
        List {
            ForEach(cards) { card in
                NCardView(card: card)
            }
        }
        .listStyle(.plain)
        .sheet(isPresented: $showSheet) {
            NCreateNoteView() { card in
                print(card)
                
                showSheet = false
            }
        }
        .overlay {
            VStack {
                Spacer()
                Button("Create note") {
                    showSheet = true
                }
            }
        }
    }
}

#Preview {
    NListView()
}
