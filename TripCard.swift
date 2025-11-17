import SwiftUI

struct TripCard: View {
    
    let trip: Trip
    
    var body: some View {
        VStack(alignment: .leading, spacing: 12) {
            
            HStack {
                Text(flagForCountry(trip.country))
                    .font(.system(size: 38))
                
                Text(trip.country)
                    .font(.system(size: 22, weight: .semibold))
                
                Spacer()
            }
            
            if !trip.cities.isEmpty {
                Text(trip.cities.joined(separator: ", "))
                    .font(.subheadline)
                    .foregroundColor(.gray)
            }
            
            HStack {
                Text(formatDate(trip.startDate))
                Text("—")
                Text(formatDate(trip.endDate))
            }
            .font(.footnote)
            .foregroundColor(.gray)
            
        }
        .padding()
        .background(.white)
        .overlay(
            RoundedRectangle(cornerRadius: 20)
                .stroke(Color.gray.opacity(0.2), lineWidth: 1)
        )
        .cornerRadius(20)
        .shadow(color: .black.opacity(0.03), radius: 3, y: 2)
    }
}


extension TripCard {
    
    func flagForCountry(_ name: String) -> String {
        let match = [
            "Japonia": "🇯🇵",
            "Hiszpania": "🇪🇸",
            "Czechy": "🇨🇿",
            "USA": "🇺🇸"
        ]
        return match[name] ?? "🌍"
    }
    
    func formatDate(_ date: Date) -> String {
        let f = DateFormatter()
        f.dateFormat = "dd.MM.yyyy"
        return f.string(from: date)
    }
}

#Preview {
    TripCard(trip: TripsStore().trips.first!)
}
