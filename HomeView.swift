import SwiftUI

struct HomeView: View {
    
    @EnvironmentObject var store: TripsStore
    @State private var selectedFilter = "Wszystko"
    
    let filters = ["Wszystko", "Kontynenty", "Miasta"]
    // trzeba dodac fnkcjonalnosc
    var body: some View {
        NavigationStack {
            ScrollView {
                VStack(spacing: 28) {
                    
                    headerSection
                    
                    statsSection
                    
                    globeCard
                    
                    filterSection
                    
                    countriesSection
                }
                .padding(.horizontal, 20)
                .padding(.top, 10)
            }
        }
    }
}

extension HomeView {
    
    // tytul i przycisk +
    var headerSection: some View {
        HStack {
            Text("TripsBook")
                .font(.system(size: 34, weight: .bold, design: .rounded))
            
            Spacer()
            
            Button(action: {}) {
                Image(systemName: "plus")
                    .font(.title3.bold())
                    .foregroundColor(.white)
                    .frame(width: 42, height: 42)
                    .background(Color.blue)
                    .clipShape(Circle())
                    .shadow(color: .blue.opacity(0.2), radius: 5)
            }
        }
    }
    
    // statystyki
    var statsSection: some View {
        HStack(spacing: 16) {
            
            statCard(
                title: "Odwiedzone kraje",
                value: "\(store.countries.filter{$0.visited}.count)"
            )
            
            statCard(
                title: "% świata",
                value: String(format: "%.1f%%",
                              (Double(store.countries.filter{$0.visited}.count) / 195.0) * 100
                             )
            )
        }
    }
    
    func statCard(title: String, value: String) -> some View {
        VStack(alignment: .leading, spacing: 6) {
            Text(title)
                .font(.system(size: 13, weight: .medium))
                .foregroundColor(.gray)
            Text(value)
                .font(.system(size: 22, weight: .bold, design: .rounded))
        }
        .padding()
        .frame(maxWidth: .infinity)
        .background(.white)
        .overlay(
            RoundedRectangle(cornerRadius: 18)
                .stroke(Color.gray.opacity(0.2), lineWidth: 1)
        )
        .cornerRadius(18)
    }
    
    // globus
    var globeCard: some View {
        VStack(alignment: .leading, spacing: 14) {
            
            ZStack {
                RoundedRectangle(cornerRadius: 22)
                    .fill(Color.gray.opacity(0.08))
                    .frame(height: 200)
                
                Text("🌍")
                    .font(.system(size: 100))
            }
            
            HStack {
                Text("Europa • Azja • Ameryka Płn.")
                    .font(.caption)
                    .foregroundColor(.gray)
                
                Spacer()
                
                Button("Powiększ") {}
                    .font(.caption)
                    .padding(.horizontal, 12)
                    .padding(.vertical, 6)
                    .background(Color.blue.opacity(0.15))
                    .cornerRadius(12)
            }
        }
        .padding()
        .background(.white)
        .overlay(
            RoundedRectangle(cornerRadius: 22)
                .stroke(Color.gray.opacity(0.2), lineWidth: 1)
        )
        .cornerRadius(22)
    }
    
    // filtry
    var filterSection: some View {
        ScrollView(.horizontal, showsIndicators: false) {
            HStack(spacing: 12) {
                ForEach(filters, id: \.self) { filter in
                    Button {
                        selectedFilter = filter
                    } label: {
                        Text(filter)
                            .font(.system(size: 15))
                            .padding(.horizontal, 16)
                            .padding(.vertical, 8)
                            .background(
                                selectedFilter == filter
                                ? Color.blue.opacity(0.18)
                                : Color.gray.opacity(0.15)
                            )
                            .foregroundColor(.black)
                            .cornerRadius(18)
                    }
                }
            }
        }
    }
    
    // kraje odwiedzone 
    var countriesSection: some View {
        VStack(alignment: .leading, spacing: 16) {
            Text("Twoje kraje")
                .font(.system(size: 22, weight: .bold))
                .padding(.leading, 4)
            
            ForEach(store.countries.filter { $0.visited }) { country in
                HStack(spacing: 14) {
                    
                    Text(country.flag)
                        .font(.system(size: 40))
                    
                    VStack(alignment: .leading, spacing: 3) {
                        Text(country.name)
                            .font(.system(size: 18, weight: .semibold))
                        Text(country.continent)
                            .font(.caption)
                            .foregroundColor(.gray)
                    }
                    
                    Spacer()
                }
                .padding()
                .background(.white)
                .overlay(
                    RoundedRectangle(cornerRadius: 18)
                        .stroke(Color.gray.opacity(0.2), lineWidth: 1)
                )
                .cornerRadius(18)
            }
        }
    }
}

#Preview {
    HomeView().environmentObject(TripsStore())
}
