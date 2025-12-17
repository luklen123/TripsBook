import Foundation

class TripsStore: ObservableObject {
    
    @Published var countries: [Country] = [
            Country(name: "Albania", continent: "Europa", flag: "🇦🇱", visited: false),
            Country(name: "Andora", continent: "Europa", flag: "🇦🇩", visited: false),
            Country(name: "Austria", continent: "Europa", flag: "🇦🇹", visited: false),
            Country(name: "Belgia", continent: "Europa", flag: "🇧🇪", visited: false),
            Country(name: "Białoruś", continent: "Europa", flag: "🇧🇾", visited: false),
            Country(name: "Bośnia i Hercegowina", continent: "Europa", flag: "🇧🇦", visited: false),
            Country(name: "Bułgaria", continent: "Europa", flag: "🇧🇬", visited: false),
            Country(name: "Chorwacja", continent: "Europa", flag: "🇭🇷", visited: false),
            Country(name: "Czarnogóra", continent: "Europa", flag: "🇲🇪", visited: false),
            Country(name: "Czechy", continent: "Europa", flag: "🇨🇿", visited: false),
            Country(name: "Dania", continent: "Europa", flag: "🇩🇰", visited: false),
            Country(name: "Estonia", continent: "Europa", flag: "🇪🇪", visited: false),
            Country(name: "Finlandia", continent: "Europa", flag: "🇫🇮", visited: false),
            Country(name: "Francja", continent: "Europa", flag: "🇫🇷", visited: false),
            Country(name: "Grecja", continent: "Europa", flag: "🇬🇷", visited: false),
            Country(name: "Hiszpania", continent: "Europa", flag: "🇪🇸", visited: false),
            Country(name: "Holandia", continent: "Europa", flag: "🇳🇱", visited: false),
            Country(name: "Irlandia", continent: "Europa", flag: "🇮🇪", visited: false),
            Country(name: "Islandia", continent: "Europa", flag: "🇮🇸", visited: false),
            Country(name: "Liechtenstein", continent: "Europa", flag: "🇱🇮", visited: false),
            Country(name: "Litwa", continent: "Europa", flag: "🇱🇹", visited: false),
            Country(name: "Luksemburg", continent: "Europa", flag: "🇱🇺", visited: false),
            Country(name: "Łotwa", continent: "Europa", flag: "🇱🇻", visited: false),
            Country(name: "Malta", continent: "Europa", flag: "🇲🇹", visited: false),
            Country(name: "Mołdawia", continent: "Europa", flag: "🇲🇩", visited: false),
            Country(name: "Monako", continent: "Europa", flag: "🇲🇨", visited: false),
            Country(name: "Niemcy", continent: "Europa", flag: "🇩🇪", visited: false),
            Country(name: "Norwegia", continent: "Europa", flag: "🇳🇴", visited: false),
            Country(name: "Polska", continent: "Europa", flag: "🇵🇱", visited: false),
            Country(name: "Portugalia", continent: "Europa", flag: "🇵🇹", visited: false),
            Country(name: "Rumunia", continent: "Europa", flag: "🇷🇴", visited: false),
            Country(name: "San Marino", continent: "Europa", flag: "🇸🇲", visited: false),
            Country(name: "Serbia", continent: "Europa", flag: "🇷🇸", visited: false),
            Country(name: "Słowacja", continent: "Europa", flag: "🇸🇰", visited: false),
            Country(name: "Słowenia", continent: "Europa", flag: "🇸🇮", visited: false),
            Country(name: "Szwajcaria", continent: "Europa", flag: "🇨🇭", visited: false),
            Country(name: "Szwecja", continent: "Europa", flag: "🇸🇪", visited: false),
            Country(name: "Ukraina", continent: "Europa", flag: "🇺🇦", visited: false),
            Country(name: "Watykan", continent: "Europa", flag: "🇻🇦", visited: false),
            Country(name: "Wielka Brytania", continent: "Europa", flag: "🇬🇧", visited: false),
            Country(name: "Węgry", continent: "Europa", flag: "🇭🇺", visited: false),
            Country(name: "Włochy", continent: "Europa", flag: "🇮🇹", visited: false),
            Country(name: "Afganistan", continent: "Azja", flag: "🇦🇫", visited: false),
            Country(name: "Arabia Saudyjska", continent: "Azja", flag: "🇸🇦", visited: false),
            Country(name: "Armenia", continent: "Azja", flag: "🇦🇲", visited: false),
            Country(name: "Azerbejdżan", continent: "Azja", flag: "🇦🇿", visited: false),
            Country(name: "Bahrajn", continent: "Azja", flag: "🇧🇭", visited: false),
            Country(name: "Bangladesz", continent: "Azja", flag: "🇧🇩", visited: false),
            Country(name: "Bhutan", continent: "Azja", flag: "🇧🇹", visited: false),
            Country(name: "Brunei", continent: "Azja", flag: "🇧🇳", visited: false),
            Country(name: "Chiny", continent: "Azja", flag: "🇨🇳", visited: false),
            Country(name: "Filipiny", continent: "Azja", flag: "🇵🇭", visited: false),
            Country(name: "Gruzja", continent: "Azja", flag: "🇬🇪", visited: false),
            Country(name: "Indie", continent: "Azja", flag: "🇮🇳", visited: false),
            Country(name: "Indonezja", continent: "Azja", flag: "🇮🇩", visited: false),
            Country(name: "Iran", continent: "Azja", flag: "🇮🇷", visited: false),
            Country(name: "Irak", continent: "Azja", flag: "🇮🇶", visited: false),
            Country(name: "Izrael", continent: "Azja", flag: "🇮🇱", visited: false),
            Country(name: "Japonia", continent: "Azja", flag: "🇯🇵", visited: false),
            Country(name: "Jemen", continent: "Azja", flag: "🇾🇪", visited: false),
            Country(name: "Jordania", continent: "Azja", flag: "🇯🇴", visited: false),
            Country(name: "Kambodża", continent: "Azja", flag: "🇰🇭", visited: false),
            Country(name: "Katar", continent: "Azja", flag: "🇶🇦", visited: false),
            Country(name: "Kazachstan", continent: "Azja", flag: "🇰🇿", visited: false),
            Country(name: "Kirgistan", continent: "Azja", flag: "🇰🇬", visited: false),
            Country(name: "Korea Południowa", continent: "Azja", flag: "🇰🇷", visited: false),
            Country(name: "Korea Północna", continent: "Azja", flag: "🇰🇵", visited: false),
            Country(name: "Kuwejt", continent: "Azja", flag: "🇰🇼", visited: false),
            Country(name: "Laos", continent: "Azja", flag: "🇱🇦", visited: false),
            Country(name: "Liban", continent: "Azja", flag: "🇱🇧", visited: false),
            Country(name: "Malezja", continent: "Azja", flag: "🇲🇾", visited: false),
            Country(name: "Malediwy", continent: "Azja", flag: "🇲🇻", visited: false),
            Country(name: "Mjanma", continent: "Azja", flag: "🇲🇲", visited: false),
            Country(name: "Mongolia", continent: "Azja", flag: "🇲🇳", visited: false),
            Country(name: "Nepal", continent: "Azja", flag: "🇳🇵", visited: false),
            Country(name: "Oman", continent: "Azja", flag: "🇴🇲", visited: false),
            Country(name: "Pakistan", continent: "Azja", flag: "🇵🇰", visited: false),
            Country(name: "Singapur", continent: "Azja", flag: "🇸🇬", visited: false),
            Country(name: "Sri Lanka", continent: "Azja", flag: "🇱🇰", visited: false),
            Country(name: "Syria", continent: "Azja", flag: "🇸🇾", visited: false),
            Country(name: "Tadżykistan", continent: "Azja", flag: "🇹🇯", visited: false),
            Country(name: "Tajlandia", continent: "Azja", flag: "🇹🇭", visited: false),
            Country(name: "Timor Wschodni", continent: "Azja", flag: "🇹🇱", visited: false),
            Country(name: "Turcja", continent: "Azja", flag: "🇹🇷", visited: false),
            Country(name: "Turkmenistan", continent: "Azja", flag: "🇹🇲", visited: false),
            Country(name: "Uzbekistan", continent: "Azja", flag: "🇺🇿", visited: false),
            Country(name: "Wietnam", continent: "Azja", flag: "🇻🇳", visited: false),
            Country(name: "Algieria", continent: "Afryka", flag: "🇩🇿", visited: false),
            Country(name: "Angola", continent: "Afryka", flag: "🇦🇴", visited: false),
            Country(name: "Benin", continent: "Afryka", flag: "🇧🇯", visited: false),
            Country(name: "Botswana", continent: "Afryka", flag: "🇧🇼", visited: false),
            Country(name: "Burkina Faso", continent: "Afryka", flag: "🇧🇫", visited: false),
            Country(name: "Burundi", continent: "Afryka", flag: "🇧🇮", visited: false),
            Country(name: "Czad", continent: "Afryka", flag: "🇹🇩", visited: false),
            Country(name: "Demokratyczna Republika Konga", continent: "Afryka", flag: "🇨🇩", visited: false),
            Country(name: "Dżibuti", continent: "Afryka", flag: "🇩🇯", visited: false),
            Country(name: "Egipt", continent: "Afryka", flag: "🇪🇬", visited: false),
            Country(name: "Erytrea", continent: "Afryka", flag: "🇪🇷", visited: false),
            Country(name: "Etiopia", continent: "Afryka", flag: "🇪🇹", visited: false),
            Country(name: "Gabon", continent: "Afryka", flag: "🇬🇦", visited: false),
            Country(name: "Gambia", continent: "Afryka", flag: "🇬🇲", visited: false),
            Country(name: "Ghana", continent: "Afryka", flag: "🇬🇭", visited: false),
            Country(name: "Gwinea", continent: "Afryka", flag: "🇬🇳", visited: false),
            Country(name: "Gwinea Bissau", continent: "Afryka", flag: "🇬🇼", visited: false),
            Country(name: "Gwinea Równikowa", continent: "Afryka", flag: "🇬🇶", visited: false),
            Country(name: "Kamerun", continent: "Afryka", flag: "🇨🇲", visited: false),
            Country(name: "Kenia", continent: "Afryka", flag: "🇰🇪", visited: false),
            Country(name: "Komory", continent: "Afryka", flag: "🇰🇲", visited: false),
            Country(name: "Kongo", continent: "Afryka", flag: "🇨🇬", visited: false),
            Country(name: "Lesotho", continent: "Afryka", flag: "🇱🇸", visited: false),
            Country(name: "Liberia", continent: "Afryka", flag: "🇱🇷", visited: false),
            Country(name: "Libia", continent: "Afryka", flag: "🇱🇾", visited: false),
            Country(name: "Madagaskar", continent: "Afryka", flag: "🇲🇬", visited: false),
            Country(name: "Malawi", continent: "Afryka", flag: "🇲🇼", visited: false),
            Country(name: "Mali", continent: "Afryka", flag: "🇲🇱", visited: false),
            Country(name: "Maroko", continent: "Afryka", flag: "🇲🇦", visited: false),
            Country(name: "Mauretania", continent: "Afryka", flag: "🇲🇷", visited: false),
            Country(name: "Mauritius", continent: "Afryka", flag: "🇲🇺", visited: false),
            Country(name: "Mozambik", continent: "Afryka", flag: "🇲🇿", visited: false),
            Country(name: "Namibia", continent: "Afryka", flag: "🇳🇦", visited: false),
            Country(name: "Niger", continent: "Afryka", flag: "🇳🇪", visited: false),
            Country(name: "Nigeria", continent: "Afryka", flag: "🇳🇬", visited: false),
            Country(name: "RPA", continent: "Afryka", flag: "🇿🇦", visited: false),
            Country(name: "Rwanda", continent: "Afryka", flag: "🇷🇼", visited: false),
            Country(name: "Senegal", continent: "Afryka", flag: "🇸🇳", visited: false),
            Country(name: "Seszele", continent: "Afryka", flag: "🇸🇨", visited: false),
            Country(name: "Sierra Leone", continent: "Afryka", flag: "🇸🇱", visited: false),
            Country(name: "Somalia", continent: "Afryka", flag: "🇸🇴", visited: false),
            Country(name: "Sudan", continent: "Afryka", flag: "🇸🇩", visited: false),
            Country(name: "Sudan Południowy", continent: "Afryka", flag: "🇸🇸", visited: false),
            Country(name: "Tanzania", continent: "Afryka", flag: "🇹🇿", visited: false),
            Country(name: "Togo", continent: "Afryka", flag: "🇹🇬", visited: false),
            Country(name: "Tunezja", continent: "Afryka", flag: "🇹🇳", visited: false),
            Country(name: "Uganda", continent: "Afryka", flag: "🇺🇬", visited: false),
            Country(name: "Wybrzeże Kości Słoniowej", continent: "Afryka", flag: "🇨🇮", visited: false),
            Country(name: "Zambia", continent: "Afryka", flag: "🇿🇲", visited: false),
            Country(name: "Zimbabwe", continent: "Afryka", flag: "🇿🇼", visited: false),
            Country(name: "Antigua i Barbuda", continent: "Ameryka Płn.", flag: "🇦🇬", visited: false),
            Country(name: "Bahamy", continent: "Ameryka Płn.", flag: "🇧🇸", visited: false),
            Country(name: "Barbados", continent: "Ameryka Płn.", flag: "🇧🇧", visited: false),
            Country(name: "Belize", continent: "Ameryka Płn.", flag: "🇧🇿", visited: false),
            Country(name: "Dominika", continent: "Ameryka Płn.", flag: "🇩🇲", visited: false),
            Country(name: "Dominikana", continent: "Ameryka Płn.", flag: "🇩🇴", visited: false),
            Country(name: "Grenada", continent: "Ameryka Płn.", flag: "🇬🇩", visited: false),
            Country(name: "Gwatemala", continent: "Ameryka Płn.", flag: "🇬🇹", visited: false),
            Country(name: "Haiti", continent: "Ameryka Płn.", flag: "🇭🇹", visited: false),
            Country(name: "Honduras", continent: "Ameryka Płn.", flag: "🇭🇳", visited: false),
            Country(name: "Jamajka", continent: "Ameryka Płn.", flag: "🇯🇲", visited: false),
            Country(name: "Kanada", continent: "Ameryka Płn.", flag: "🇨🇦", visited: false),
            Country(name: "Kostaryka", continent: "Ameryka Płn.", flag: "🇨🇷", visited: false),
            Country(name: "Kuba", continent: "Ameryka Płn.", flag: "🇨🇺", visited: false),
            Country(name: "Meksyk", continent: "Ameryka Płn.", flag: "🇲🇽", visited: false),
            Country(name: "Nikaragua", continent: "Ameryka Płn.", flag: "🇳🇮", visited: false),
            Country(name: "Panama", continent: "Ameryka Płn.", flag: "🇵🇦", visited: false),
            Country(name: "Salwador", continent: "Ameryka Płn.", flag: "🇸🇻", visited: false),
            Country(name: "Saint Kitts i Nevis", continent: "Ameryka Płn.", flag: "🇰🇳", visited: false),
            Country(name: "Saint Lucia", continent: "Ameryka Płn.", flag: "🇱🇨", visited: false),
            Country(name: "Saint Vincent i Grenadyny", continent: "Ameryka Płn.", flag: "🇻🇨", visited: false),
            Country(name: "Trynidad i Tobago", continent: "Ameryka Płn.", flag: "🇹🇹", visited: false),
            Country(name: "USA", continent: "Ameryka Płn.", flag: "🇺🇸", visited: false),
            Country(name: "Argentyna", continent: "Ameryka Płd.", flag: "🇦🇷", visited: false),
            Country(name: "Boliwia", continent: "Ameryka Płd.", flag: "🇧🇴", visited: false),
            Country(name: "Brazylia", continent: "Ameryka Płd.", flag: "🇧🇷", visited: false),
            Country(name: "Chile", continent: "Ameryka Płd.", flag: "🇨🇱", visited: false),
            Country(name: "Kolumbia", continent: "Ameryka Płd.", flag: "🇨🇴", visited: false),
            Country(name: "Ekwador", continent: "Ameryka Płd.", flag: "🇪🇨", visited: false),
            Country(name: "Gujana", continent: "Ameryka Płd.", flag: "🇬🇾", visited: false),
            Country(name: "Paragwaj", continent: "Ameryka Płd.", flag: "🇵🇾", visited: false),
            Country(name: "Peru", continent: "Ameryka Płd.", flag: "🇵🇪", visited: false),
            Country(name: "Surinam", continent: "Ameryka Płd.", flag: "🇸🇷", visited: false),
            Country(name: "Urugwaj", continent: "Ameryka Płd.", flag: "🇺🇾", visited: false),
            Country(name: "Wenezuela", continent: "Ameryka Płd.", flag: "🇻🇪", visited: false),
            Country(name: "Australia", continent: "Oceania", flag: "🇦🇺", visited: false),
            Country(name: "Fidżi", continent: "Oceania", flag: "🇫🇯", visited: false),
            Country(name: "Kiribati", continent: "Oceania", flag: "🇰🇮", visited: false),
            Country(name: "Mikronezja", continent: "Oceania", flag: "🇫🇲", visited: false),
            Country(name: "Nauru", continent: "Oceania", flag: "🇳🇷", visited: false),
            Country(name: "Nowa Zelandia", continent: "Oceania", flag: "🇳🇿", visited: false),
            Country(name: "Palau", continent: "Oceania", flag: "🇵🇼", visited: false),
            Country(name: "Papua-Nowa Gwinea", continent: "Oceania", flag: "🇵🇬", visited: false),
            Country(name: "Samoa", continent: "Oceania", flag: "🇼🇸", visited: false),
            Country(name: "Tonga", continent: "Oceania", flag: "🇹🇴", visited: false),
            Country(name: "Tuvalu", continent: "Oceania", flag: "🇹🇻", visited: false),
            Country(name: "Vanuatu", continent: "Oceania", flag: "🇻🇺", visited: false)
        ]
    
    
    @Published var trips: [Trip] = []
    
    
    // inicjalizacja
    init() {
        loadTrips()
        updateTripStatuses()
        
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
