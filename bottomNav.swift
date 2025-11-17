//
//  BottomNav.swift
//  BlossomMovie
//
//  Created by stud on 03/11/2025.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        TabView{
            Tab(Constants.homeString, systemImage: Constants.homeIconString){
                Text(Constants.homeString)
            }
            Tab(Constants.tripsString, systemImage: Constants.tripsIconString){
                Text(Constants.tripsString)
            }
            Tab(Constants.calendarString, systemImage: Constants.calendarIconString){
                Text(Constants.calendarString)
            }
            Tab(Constants.statsString, systemImage: Constants.statsIconString){
                Text(Constants.statsString)
            }
            Tab(Constants.countriesString, systemImage: Constants.countriesIconString){
                Text(Constants.countriesString)
            }
            
        }
    }
}

#Preview {
    ContentView()
}
