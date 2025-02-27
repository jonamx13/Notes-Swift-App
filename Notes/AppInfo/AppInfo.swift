//
//  AppInfo.swift
//  Notes
//
//  Created by Jonathan Meixueiro on 27/02/25.
//

import Foundation

class AppInfo: ObservableObject {
    @Published var cards: [NCard] = [
        NCard(title: "Grocery List",
              text: "Buy milk, eggs, and bread.",
              type: .small,
              isFavorite: false),
        NCard(title: "Meeting Notes",
              text: "Discuss project deadlines and team updates.",
              type: .medium,
              isFavorite: true),
        NCard(title: "Workout Plan",
              text: "Morning run, weight training, and stretching.",
              type: .small,
              isFavorite: false),
        NCard(title: "Book Summary",
              text: "Key takeaways from 'Atomic Habits'.",
              type: .medium,
              isFavorite: true),
        NCard(title: "Daily Journal",
              text: "Reflections on today’s events.",
              type: .small,
              isFavorite: false),
        NCard(title: "Travel Itinerary",
              text: "Flight at 10 AM, hotel check-in at 3 PM.",
              type: .medium,
              isFavorite: true),
        NCard(title: "Recipe",
              text: "Pasta with homemade tomato sauce.",
              type: .small,
              isFavorite: false),
        NCard(title: "Coding Tips",
              text: "Use MVVM for better code organization.",
              type: .medium,
              isFavorite: true),
        NCard(title: "Shopping List",
              text: "New headphones, laptop stand, and mouse.",
              type: .small,
              isFavorite: false),
        NCard(title: "Birthday Reminder",
              text: "Call John and buy a gift.",
              type: .medium,
              isFavorite: true)
    ]
    
    func createNote(card: NCard) {
        cards.append(card)
    }
}
