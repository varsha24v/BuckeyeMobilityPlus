import SwiftUI
import MapKit

struct MapView: View {
    @State private var region = MKCoordinateRegion(
        center: CLLocationCoordinate2D(latitude: 40.002, longitude: -83.015),
        span: MKCoordinateSpan(latitudeDelta: 0.01, longitudeDelta: 0.01)
    )
    
    var body: some View {
        Map(coordinateRegion: $region, annotationItems: DriverData.sampleDrivers) { driver in
            MapPin(coordinate: driver.location, tint: .red)
        }
        .cornerRadius(20)
        .padding()
        .frame(height: 300)
    }
}

struct ContentView: View {
    @State private var selectedOption = "Carpool"
    let options = ["Carpool", "Routes", "Safety"]
    
    var body: some View {
        VStack(spacing: 20) {
            Text("Map of Drivers")
                .font(.largeTitle)
                .bold()
                .padding(.top, 20)
            
            // Segmented Options
            HStack(spacing: 16) {
                ForEach(options, id: \.self) { option in
                    Button(action: {
                        selectedOption = option
                    }) {
                        Text(option)
                            .padding()
                            .frame(maxWidth: .infinity)
                            .background(selectedOption == option ? Color.red : Color.white)
                            .foregroundColor(selectedOption == option ? .white : .black)
                            .cornerRadius(10)
                            .shadow(color: .gray, radius: 5)
                    }
                }
            }
            .padding(.horizontal, 20)
            
            // Search bar and map
            VStack {
                TextField("Search here", text: .constant(""))
                    .padding()
                    .background(Color.white)
                    .cornerRadius(8)
                    .padding(.horizontal, 16)
                
                MapView()
            }
            
            // Find Drivers Button
            Button(action: {
                // Action to find drivers
            }) {
                Text("Find Drivers")
                    .bold()
                    .foregroundColor(.white)
                    .padding()
                    .frame(maxWidth: .infinity)
                    .background(Color.red)
                    .cornerRadius(10)
                    .padding(.horizontal, 16)
            }
            
            Spacer()
            
            // Bottom Tab Bar
            TabView {
                Text("Home").tabItem {
                    Image(systemName: "house.fill")
                    Text("Home")
                }
                Text("Explore").tabItem {
                    Image(systemName: "location.north.fill")
                    Text("Explore")
                }
                Text("Account").tabItem {
                    Image(systemName: "person.fill")
                    Text("Account")
                }
            }
            .frame(height: 80)
        }
    }
}

// Sample Data Model
struct Driver: Identifiable {
    let id = UUID()
    let location: CLLocationCoordinate2D
}

struct DriverData {
    static let sampleDrivers = [
        Driver(location: CLLocationCoordinate2D(latitude: 40.002, longitude: -83.015)),
        Driver(location: CLLocationCoordinate2D(latitude: 40.003, longitude: -83.020)),
        Driver(location: CLLocationCoordinate2D(latitude: 40.005, longitude: -83.010))
    ]
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
