//
//  StartSchermView.swift
//  WK-Qatar
//
//  Created by Efrain Mouton on 20/10/2025.
//

import SwiftUI

struct StartSchermView: View {
    @State var selectedCountry: String?
    @Environment(WKDataStore.self) var wkDataStore
    var body: some View {
        VStack{
            HStack{
                Image(systemName: "soccerball").foregroundStyle(.tint)
                Text("WK QATAR 2022").font(.largeTitle)
                Image(systemName: "soccerball").foregroundStyle(.tint)
            }
            Text("Select your favourite team...")
            List(wkDataStore.getAllCountries(), id: \.self, selection: $selectedCountry) { country in
                if country == selectedCountry {
                    Text(country).foregroundStyle(.red)
                } else {
                    Text(country)
                }
            }
            NavigationLink("Next"){
                if let selectedCountry = selectedCountry {
                    CountryMatchesView(selectedCountry: selectedCountry)
                }
            }
        }
    }
}
