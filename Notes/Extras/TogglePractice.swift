//
//  TogglePractice.swift
//  Notes
//
//  Created by Jonathan Meixueiro on 26/02/25.
//

import SwiftUI

struct TogglePractice: View {
    @State var age_1: Double = 18
    @State var isAdult_1: Bool = true
    
    @State var age_2: Double = 18
    @State var isAdult_2: Bool = true
    
    var body: some View {
        Text("First Slider and Toggle")
            .font(.headline)
        VStack {
            Text("Age: \(age_1.formatted(.number))")
            Slider(value: $age_1, in: 1...100, step: 1)
            
            Toggle("Is adult?", isOn: $isAdult_1)
        }
        .padding()
        .background(Color.gray.opacity(0.2))
        .cornerRadius(20)
        .padding(10)
        .onChange(of: age_1) { newValue in
            if newValue >= 18 {
                //activate toggle
                isAdult_1 = true
            } else {
                //deactivate toggle
                isAdult_1 = false
            }
        }
       //Challenge: inverse response, the slider positions on 18 when we manually activate the toggle
        
        Text("Second Slider and Toggle")
            .font(.headline)
        VStack {
            Text("Age: \(age_2.formatted(.number))")
            Slider(value: $age_2, in: 1...100, step: 1)
            
            Toggle("Is adult?", isOn: $isAdult_2)
        }
        .padding()
        .background(Color.gray.opacity(0.2))
        .cornerRadius(20)
        .padding(10)
        .onChange(of: isAdult_2) { newValue in
            if isAdult_2 {
                // Slider jumps to 18
                age_2 = 18
            } else {
                // Slider jumps to 5
                age_2 = 5
            }
        }
    }
}

#Preview {
    TogglePractice()
}
