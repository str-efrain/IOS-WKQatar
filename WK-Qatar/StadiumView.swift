//
//  StadiumView.swift
//  WK-Qatar
//
//  Created by Efrain Mouton on 21/10/2025.
//

import SwiftUI

struct StadiumView: View {
    @Environment(WKDataStore.self) var wkDataStore
    @Binding var selectedStadium: String?
    var body: some View {
        List(wkDataStore.getAllStadiums(), id: \.self, selection: $selectedStadium) { stadium in
            Text(stadium)
        }
    }
}
