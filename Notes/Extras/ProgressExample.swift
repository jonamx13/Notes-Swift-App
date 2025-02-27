//
//  ProgressExample.swift
//  Notes
//
//  Created by CIET1 on 27/02/25.
//

import SwiftUI

struct ProgressExample: View {
    @State private var progress: Double = 0.3
    
    var body: some View {
        VStack {
            Text("Loading...")
                .font(.headline)
            
            // Progress bar
            ProgressView(value: progress)
                .progressViewStyle(LinearProgressViewStyle())
            
            // Progress circle
            ProgressView()
                .progressViewStyle(CircularProgressViewStyle())
            
            
            // Button to simulate progress
            Button("Increase progress") {
                withAnimation {
                    progress = min(progress + 0.1, 1.0)
                }
            }
            .padding()
        }
    }
}

#Preview {
    ProgressExample()
}
