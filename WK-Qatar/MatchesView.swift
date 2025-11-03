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
            Grid(alignment: .center,horizontalSpacing: 16) {
                GridRow {
                    if match.homeTeam == selectedCountry {
                        Text(match.homeTeam).foregroundStyle(.red)
                    } else {
                        Text(match.homeTeam)
                    }
                    Text("X")
                    if match.awayTeam == selectedCountry {
                        Text(match.awayTeam).foregroundStyle(.red)
                    } else {
                        Text(match.awayTeam)
                    }
                }
                GridRow {
                    if match.homeTeamScore == nil {
                        Text("TBD")
                        Text("-")
                        Text("TBD")
                    } else {
                        Text("\(match.homeTeamScore!)")
                        Text("-")
                        Text("\(match.awayTeamScore!)")
                    }
                }
            }
        }
        Text(selectedStadium)
    }
}


