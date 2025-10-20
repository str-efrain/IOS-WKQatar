//
//  WK_QatarApp.swift
//  WK-Qatar
//
//  Created by Efrain Mouton on 20/10/2025.
//

import SwiftUI

@main
struct WK_QatarApp: App {
    @State var wkDataStore = WKDataStore();
    var body: some Scene {
        WindowGroup {
            ContentView().environment(wkDataStore)
        }
    }
}
