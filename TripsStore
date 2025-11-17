import Foundation

class TripsStore: ObservableObject {
    
    // dane alw to z API!!!
    @Published var countries: [Country] = [
        Country(name: "Hiszpania", continent: "Europa", flag: "🇪🇸", visited: false),
        Country(name: "Czechy", continent: "Europa", flag: "🇨🇿", visited: false),
        Country(name: "Japonia", continent: "Azja", flag: "🇯🇵", visited: false),
        Country(name: "USA", continent: "Ameryka Płn.", flag: "🇺🇸", visited: false)
    ]
    
    @Published var trips: [Trip] = []
    
    
    // inicjalizacja
    init() {
        loadTrips()
    }
    
    
    // zapis podrozy
    func saveTrips() {
        let encoder = JSONEncoder()
        
        if let data = try? encoder.encode(trips) {
            UserDefaults.standard.set(data, forKey: "savedTrips")
        }
    }
    
    
    // odczyt podrozy
    func loadTrips() {
        if let data = UserDefaults.standard.data(forKey: "savedTrips") {
            let decoder = JSONDecoder()
            
            if let decoded = try? decoder.decode([Trip].self, from: data) {
                self.trips = decoded
                return
            }
        }
        
        // jak bez danych dodaj przypaadkowa (tylko do pokazania ze dziala)
        self.trips = [
            Trip(
                country: "Japonia",
                cities: ["Tokio", "Kioto"],
                startDate: Date(),
                endDate: Date().addingTimeInterval(60 * 60 * 24 * 7),
                status: .planned,
                notes: "",
                photos: []
            )
        ]
    }
}
