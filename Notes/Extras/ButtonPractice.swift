//
//  ButtonPractice.swift
//  Notes
//
//  Created by Jonathan Meixueiro on 19/02/25.
//

import SwiftUI

struct ButtonPractice: View {
    @State var counter: Int = 0
    var body: some View {
        VStack {
            Text("\(counter)")
            Button {
                counter += 1
                print(counter)
            } label: {
                Text("Press me")
                    .font(.headline)
                    .foregroundStyle(Color.white)
                    .frame(maxWidth: .infinity)
                    .padding()
                    .background(Color.blue)
                    .cornerRadius(8)
            }
        }
        .padding(30)
        
    }
}

#Preview {
    ButtonPractice()
}
