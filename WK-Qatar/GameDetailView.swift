//
//  GameDetailView.swift
//  WK-Qatar
//
//  Created by Efrain Mouton on 21/10/2025.
//

import SwiftUI

struct GameDetailView: View {
    var selectedMatch: WKResult
    var body: some View {
        VStack{
            Text(selectedMatch.dateUTC).bold()
            Text(selectedMatch.location).font(.title).padding(10)
            Grid{
                GridRow {
                    Text(selectedMatch.homeTeam)
                    Text("X")
                    Text(selectedMatch.awayTeam)
                }
                GridRow{
                    if selectedMatch.homeTeamScore == nil {
                        Text("TBD")
                        Text("-")
                        Text("TBD")
                    } else {
                        Text("\(selectedMatch.homeTeamScore!)")
                        Text("-")
                        Text("\(selectedMatch.awayTeamScore!)")
                    }
                }
            }
            Spacer()
            Text("Round: \(selectedMatch.roundNumber)")
            Text("Group: \(selectedMatch.group!)")
            Spacer()
        }
    }
}

