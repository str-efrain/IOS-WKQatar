//
//  WKDataStore.swift
//  WK-Qatar
//
//  Created by Efrain Mouton on 20/10/2025.
//

import Foundation

@Observable
class WKDataStore{
    
    var WKResults: [WKResult]// = load("WKResultsQatar.json")

    init() {
        self.WKResults = load("WKResultsQatar.json")
    }
    
    public func getAllCountries() -> [String]{
        var countries: [String] = []
        for result in WKResults {
            if result.roundNumber == 1 {
                countries.append(result.homeTeam)
            }
        }
        return Array(Set(countries)).sorted()
    }
    
    public func getAllStadiums() -> [String]{
        var stadiums: [String] = []
        for result in WKResults {
            stadiums.append(result.location)
        }
        return Array(Set(stadiums)).sorted()
    }
    
    public func getMatchesInStadium(stadium: String) -> [WKResult] {
        var matches: [WKResult] = []
        for result in WKResults {
            if result.location == stadium {
                matches.append(result)
            }
        }
        return matches
    }
}



