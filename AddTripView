import SwiftUI

struct AddTripView: View {
    
    @EnvironmentObject var store: TripsStore
    @Environment(\.dismiss) var dismiss
    
    @State private var selectedCountry = ""
    @State private var cityInput = ""
    @State private var cities: [String] = []
    
    @State private var startDate = Date()
    @State private var endDate = Date()
    
    @State private var notes = ""
    
    var body: some View {
        NavigationStack {
            Form {
                
                Section(header: Text("Kraj")) {
                    Picker("Wybierz kraj", selection: $selectedCountry) {
                        ForEach(store.countries.map{$0.name}, id: \.self) { name in
                            Text(name)
                        }
                    }
                }
                
                Section(header: Text("Miasta")) {
                    HStack {
                        TextField("Dodaj miasto", text: $cityInput)
                        Button("Dodaj") {
                            if !cityInput.isEmpty {
                                cities.append(cityInput)
                                cityInput = "" // czy jakos sprawdzamy czy te miasta sa prawdziwe albo podpowiadamy jak wpisze poczatkowe litery
                            }
                        }
                    }
                    
                    ForEach(cities, id: \.self) { city in
                        Text(city)
                    }
                }
                
                Section(header: Text("Daty podróży")) {
                    DatePicker("Start", selection: $startDate, displayedComponents: .date)
                    DatePicker("Koniec", selection: $endDate, displayedComponents: .date) // tu trzeba dodac sprawdza ie czy poczatek nie jest po koncu podrozy
                }
                
                Section(header: Text("Notatki")) {
                    TextEditor(text: $notes)
                        .frame(height: 120)
                }
            }
            
            .navigationTitle("Nowa podróż")
            .toolbar {
                ToolbarItem(placement: .confirmationAction) {
                    Button("Zapisz") {
                        saveTrip()
                        dismiss()
                    }
                }
                
                ToolbarItem(placement: .cancellationAction) {
                    Button("Anuluj") { dismiss() }
                }
            }
        }
    }
    func saveTrip() {
        
        let today = Calendar.current.startOfDay(for: Date())
        let start = Calendar.current.startOfDay(for: startDate)
        let end = Calendar.current.startOfDay(for: endDate)
        
        let status: TripStatus
        
        if end < today {
            status = .completed
        } else if start > today {
            status = .planned
        } else {
            status = .ongoing
        }
        
        let newTrip = Trip(
            country: selectedCountry,
            cities: cities,
            startDate: startDate,
            endDate: endDate,
            status: status,
            notes: notes,
            photos: []
        )
        
        store.trips.append(newTrip)
        
        // jeśli zakończona → oznacz kraj odwiedzony
        if status == .completed {
            if let index = store.countries.firstIndex(where: { $0.name == selectedCountry }) {
                store.countries[index].visited = true
            }
        }
        
        store.saveTrips()
    }
    
}

#Preview {
    AddTripView().environmentObject(TripsStore())
}

