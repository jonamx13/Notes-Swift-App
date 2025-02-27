//
//  ContentView.swift
//  Notes
//
//  Created by Jonathan Meixueiro on 18/02/25.
//

import SwiftUI

struct ContentView: View {
    @StateObject var appInfo = AppInfo()
    
    var body: some View {
        NListView()
            .environmentObject(appInfo)
    }
}

#Preview {
    ContentView()
}
