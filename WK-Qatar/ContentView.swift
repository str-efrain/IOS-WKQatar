//
//  ContentView.swift
//  WK-Qatar
//
//  Created by Efrain Mouton on 20/10/2025.
//

import SwiftUI

struct ContentView: View {
    @Environment(WKDataStore.self) var wkDataStore
    var body: some View {
        NavigationStack(root: {
            StartSchermView($wkDataStore)
        })
        .padding()
    }
}

#Preview {
    ContentView()
}
