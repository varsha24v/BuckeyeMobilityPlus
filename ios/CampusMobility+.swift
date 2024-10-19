import SwiftUI
import MapKit

@main
struct CampusMobilityApp: App {
    var body: some Scene {
        WindowGroup {
            ContentView()
        }
    }
}

struct ContentView: View {
    @State private var region = MKCoordinateRegion(
        center: CLLocationCoordinate2D(latitude: 40.006, longitude: -83.013),
        span: MKCoordinateSpan(latitudeDelta: 0.05, longitudeDelta: 0.05)
    )

    var body: some View {
        VStack {
            Text("Welcome to CampusMobility+")
                .font(.largeTitle)
                .padding()
            Map(coordinateRegion: $region)
                .frame(height: 300)
        }
    }
}
