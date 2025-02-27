//
//  NCreateNoteView.swift
//  Notes
//
//  Created by Jonathan Meixueiro on 26/02/25.
//

import SwiftUI

struct NCreateNoteView: View {
    @StateObject var viewModel: NCreateNoteViewModel = NCreateNoteViewModel()
    
    var onNoteCreated: ((NCard) -> Void)?
    
    func onTap() {
        let card = viewModel.createNote()
        
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
                
                // Using NTextField to refactor
                NTextField(placeholder: "Title", text: $viewModel.title)
                
                // Using NTextField to refactor
                NTextEditor(text: $viewModel.text)
                    
                HStack {
                    Text("Size")
                    Spacer()
                    Picker("Size", selection: $viewModel.size) {
                        Text("Small").tag(NCardType.small)
                        Text("Medium").tag(NCardType.medium)
                    }
                }
                .padding()
                
                Toggle("Mark as Favorite", isOn: $viewModel.isFavorite)
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
