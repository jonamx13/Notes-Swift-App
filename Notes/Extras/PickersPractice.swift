//
//  PickersPractice.swift
//  Notes
//
//  Created by Jonathan on 26/02/25.
//

import SwiftUI

struct PickersPractice: View {
    @State var date: Date = Date()
    @State var categroy: Int = 0
    @State var size: NCardType = .small
    var body: some View {
        DatePicker("date", selection: $date,
                   displayedComponents: [.hourAndMinute])
            .datePickerStyle(.wheel)
            .padding()
        
        Picker("Categories", selection:
                $categroy) {
            Text("0").tag(0)
            Text("1").tag(1)
            Text("2").tag(2)
        }
        .pickerStyle(SegmentedPickerStyle())
        
        Picker("Sizes", selection: $size) {
            HStack{
                Text("Left").tag(NCardType.small)
                Image(systemName: "arrowshape.left.circle.fill")
            }
            Label("Right", systemImage: "arrowshape.right.circle.fill")
                
            Text("Small").tag(NCardType.small)
            Text("Medium").tag(NCardType.medium)
        }
    }
}

#Preview {
    PickersPractice()
}
