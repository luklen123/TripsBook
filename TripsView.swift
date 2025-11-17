import SwiftUI

struct TripsView: View {
    
    @EnvironmentObject var store: TripsStore
    @State private var showAddTrip = false
    @State private var selectedTab: TripStatus = .planned
    
    var body: some View {
        NavigationStack {
            VStack(spacing: 20) {
                
                // podzial na w planie lub zako
                Picker("", selection: $selectedTab) {
                    Text("W planie").tag(TripStatus.planned)
                    Text("Zakończone").tag(TripStatus.completed)
                }
                .pickerStyle(.segmented)
                .padding(.horizontal)
                
                // lista podrozy
                ScrollView {
                    VStack(spacing: 18) {
                        ForEach(store.trips.filter { $0.status == selectedTab }) { trip in
                            TripCard(trip: trip)
                        }
                    }
                    .padding(.horizontal)
                }
                
                Spacer()
            }
            .navigationTitle("Podróże")
            .toolbar {
                ToolbarItem(placement: .navigationBarTrailing) {
                    Button {
                        showAddTrip.toggle()
                    } label: {
                        Image(systemName: "plus")
                            .font(.title3.bold())
                            .foregroundColor(.white)
                            .frame(width: 42, height: 42)
                            .background(Color.blue)
                            .clipShape(Circle())
                            .shadow(color: .blue.opacity(0.25), radius: 6)
                    }
                }
            }
            .sheet(isPresented: $showAddTrip) {
                AddTripView()
                    .environmentObject(store)
            }
        }
    }
}

#Preview {
    TripsView().environmentObject(TripsStore())
}

