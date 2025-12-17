import Foundation

class TripsStore: ObservableObject {
    
    //trzeba dopisac reszte panstwa
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
        updateTripStatuses()
        
        //odwiedzone policzone po statusach
        DispatchQueue.main.async {
            self.updateVisitedCountries()
        }
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
        
    }
    
    
    // aktualizacja odwiedzonych krajow (dla HomeView)
    func updateVisitedCountries() {
        let completedCountries = Set(
            trips.filter { $0.status == .completed }
                .map { $0.country }
        )
        
        for index in countries.indices {
            countries[index].visited = completedCountries.contains(countries[index].name)
        }
    }
    
    
    // automatyczna zmiana statusu podrozy
    func updateTripStatuses() {
        let today = Calendar.current.startOfDay(for: Date())
        
        for index in trips.indices {
            let start = Calendar.current.startOfDay(for: trips[index].startDate)
            let end   = Calendar.current.startOfDay(for: trips[index].endDate)
            
            if end <= today {
                trips[index].status = .completed
            } else {
                trips[index].status = .planned
            } 
        }
        
        saveTrips()
    }
}

