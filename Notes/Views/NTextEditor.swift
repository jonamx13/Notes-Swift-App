//
//  NTextEditor.swift
//  Notes
//
//  Created by Jonathan Meixueiro on 27/02/25.
//

import SwiftUI

struct NTextEditor: View {
    @Binding var text: String
    
    var body: some View {
        TextEditor(text: $text)
            .scrollContentBackground(.hidden)
            .font(.body)
            .frame(height:150)
            .padding()
            .background(Color.gray.opacity(0.1))
            .cornerRadius(8)
    }
}

#Preview {
    NTextEditor(text: .constant("Something for the text editor"))
        .padding()
}
