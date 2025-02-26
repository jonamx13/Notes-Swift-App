//
//  AlertPractice.swift
//  Notes
//
//  Created by Jonathan Meixueiro on 26/02/25.
//

import SwiftUI

struct AlertPractice: View {
//    @State var showAlert: Bool = false
    @State var showSheet: Bool = false
    
    
    var body: some View {
//        VStack {
//            Button("Show Alert") {
//                // Activate alert
//                showAlert = true
//            }
//        }
//        .alert("This is an alert message", isPresented: $showAlert) {
//            Button("Accept") {
//                print("Accept")
//            }
//            Button("Cancel") {
//                print("Cancel")
//            }
//        }
        VStack {
            Button("Show Sheet") {
                showSheet = true
            }
        }
        .sheet(isPresented: $showSheet) {
            NCreateNoteView()
        }
    }
}

#Preview {
    AlertPractice()
}
