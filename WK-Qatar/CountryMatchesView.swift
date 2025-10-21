//
//  CountryMatchesView.swift
//  WK-Qatar
//
//  Created by Efrain Mouton on 21/10/2025.
//

import SwiftUI

struct CountryMatchesView: View {
    var selectedCountry: String
    @State var selectedStadium: String?
    @State var selectedMatch: WKResult?
    var body: some View {
        NavigationSplitView {
            StadiumView(selectedStadium: $selectedStadium)
        } content: {
            if let selectedStadium = selectedStadium {
                MatchesView(selectedStadium: selectedStadium, selectedCountry: selectedCountry, selectedMatch: $selectedMatch)
            } else {
                Text("Please select a stadium")
            }
        } detail: {
            GameDetailView()
        }
    }
}
