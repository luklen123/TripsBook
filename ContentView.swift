import SwiftUI

struct ContentView: View {
    @StateObject var store = TripsStore()   // baza danych
    
    var body: some View {
        MainTabView()                       //  nawigacja (5 zakladek)
            .environmentObject(store)       
    }
}
