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
        var countries: [String]
        for result in WKResults {
            countries.append(result.homeTeam)
        }
        return Array(Set(countries)).sorted()
    }
}



