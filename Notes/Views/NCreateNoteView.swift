//
//  NCreateNoteView.swift
//  Notes
//
//  Created by Jonathan Meixueiro on 26/02/25.
//

import SwiftUI

struct NCreateNoteView: View {
    @State private var title: String = ""
    @State private var text: String = ""
    @State private var size: NCardType = .small
    @State private var isFavorite: Bool = false
    
    var onNoteCreated: ((NCard) -> Void)?
    
    func onTap() {
        let card = NCard(title: title, text: text, type: size, isFavorite: isFavorite)
        
        print("This is your new card: \(card)")
        
        onNoteCreated?(card)
    }
    
    var body: some View {
        ScrollView{
            VStack {
                Text("Create New Note")
                    .font(.largeTitle)
                    .bold()
                    .padding(.bottom, 10)
                
                TextField("Title", text: $title)
                    .font(.headline)
                    .padding()
                    .background(Color.gray.opacity(0.1))
                    .cornerRadius(8)

                TextEditor(text: $text)
                    .scrollContentBackground(.hidden)
                    .font(.body)
                    .frame(height:150)
                    .padding()
                    .background(Color.gray.opacity(0.1))
                    .cornerRadius(8)
                
                HStack {
                    Text("Size")
                    Spacer()
                    Picker("Size", selection: $size) {
                        Text("Small").tag(NCardType.small)
                        Text("Medium").tag(NCardType.medium)
                    }
                }
                .padding()
                
                Toggle("Mark as Favorite", isOn: $isFavorite)
                    .padding()
                
                Button {
                    onTap()
                } label: {
                    Text("Save note")
                        .font(.headline)
                        .foregroundStyle(.white)
                        .frame(maxWidth: .infinity)
                        .padding()
                        .background(Color.blue)
                        .cornerRadius(10)
                }
                .padding(.top, 20)
            }
        }
        .padding()
        .background(Color.white)
        .cornerRadius(16)
        .padding()
        .background(Color.cyan.opacity(0.2))
    }
}

#Preview {
    NCreateNoteView()
}
