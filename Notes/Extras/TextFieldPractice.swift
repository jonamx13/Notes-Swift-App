//
//  TextFieldPractice.swift
//  Notes
//
//  Created by CIET1 on 19/02/25.
//

import SwiftUI

struct TextFieldPractice: View {
    @State var name: String = ""
    @State var color: Color = Color.gray.opacity(0.2)
    
    var body: some View {
//        TextField("Name", text: $name)
//            .font(.headline)
//            .padding()
//            .background(color)
//            .cornerRadius(8)
//            .padding()
//            .onChange(of: name) { newValue in
//                // When name is greater than > 10 chars
//                if newValue.count > 10 {
//                    // Red color
//                    color = .red.opacity(0.2)
//                } else {
//                    // Gray color
//                    color = .gray.opacity(0.2)
//                }
//            }
        TextEditor(text: $name)
            .font(.headline)
            .padding()
            .background(color)
            .cornerRadius(8)
            .scrollContentBackground(.hidden)
            .padding()
            .onChange(of: name) { newValue in
                if newValue.count > 50 {
                    color = .red.opacity(0.2)
                } else {
                    color = .gray.opacity(0.2)
                }
                
            }
    }
}

#Preview {
    TextFieldPractice()
}
