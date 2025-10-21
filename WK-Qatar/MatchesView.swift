//
//  MatchesView.swift
//  WK-Qatar
//
//  Created by Efrain Mouton on 21/10/2025.
//

import SwiftUI

struct MatchesView: View {
    var selectedStadium: String
    var selectedCountry: String
    @Binding var selectedMatch: WKResult?
    @Environment(WKDataStore.self) var wkDataStore
    var body: some View {
        List(wkDataStore.getMatchesInStadium(stadium: selectedStadium), id: \.self, selection: $selectedMatch) { match in
            Grid {
                GridRow {
                    Text(match.hometeam)
                    Text("X")
                    Text(match.awayteam)
                }
                GridRow {
                    Text(match.homescore)
                    Tex("-")
                    Text(match.awayscore)
                }
            }
        }
        Text(selectedStadium)
    }
}


