//
//  NTextField.swift
//  Notes
//
//  Created by Jonathan Meixueiro on 27/02/25.
//

import SwiftUI

struct NTextField: View {
    let placeholder: String
    @Binding var text: String
    
    var body: some View {
        // Reuse textfield design
        TextField(placeholder, text: $text)
            .font(.headline)
            .padding()
            .background(Color.gray.opacity(0.1))
            .cornerRadius(8)
    }
}

#Preview {
    VStack {
        NTextField(placeholder: "Write something...", text: .constant("Initial text"))
        NTextField(placeholder: "Write something else...", text: .constant(""))
    }
    .padding()
}
