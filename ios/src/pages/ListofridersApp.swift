//
//  ListofridersApp.swift
//  Listofriders

import SwiftUI

// Rider Model to represent each rider's information
struct Rider: Identifiable {
    let id = UUID()
    let name: String
    let level: Int
    let distance: String
    let responses: Int
    let imageName: String
    let quote: String?
}

// Main View
struct RidersListView: View {
    @State private var selectedTab = "Now"
    
    let riders: [Rider] = [
        Rider(name: "Meg Sugumar", level: 7, distance: "~1 mi", responses: 110, imageName: "meg", quote: nil),
        Rider(name: "Harini Akula", level: 5, distance: "~1.5 mi", responses: 50, imageName: "harini", quote: nil),
        Rider(name: "Ashika Batchu", level: 1, distance: "~2.5 mi", responses: 1, imageName: "ashika", quote: "Punctual, nice person to talk to")
    ]
    
    var body: some View {
        VStack {
            // Title
            Text("List of Riders")
                .font(.largeTitle)
                .fontWeight(.bold)
                .padding(.top, 20)
            
            // Toggle Buttons for Now and Later
            HStack {
                Button(action: {
                    selectedTab = "Now"
                }) {
                    Text("Now")
                        .foregroundColor(selectedTab == "Now" ? .white : .red)
                        .frame(width: 100, height: 40)
                        .background(selectedTab == "Now" ? Color.red : Color.gray.opacity(0.2))
                        .cornerRadius(10)
                }
                
                Button(action: {
                    selectedTab = "Later"
                }) {
                    Text("Later")
                        .foregroundColor(selectedTab == "Later" ? .white : .red)
                        .frame(width: 100, height: 40)
                        .background(selectedTab == "Later" ? Color.red : Color.gray.opacity(0.2))
                        .cornerRadius(10)
                }
            }
            .padding(.horizontal)
            .padding(.top, 10)
            
            // Riders List
            ScrollView {
                ForEach(riders) { rider in
                    RiderCard(rider: rider)
                        .padding(.horizontal)
                        .padding(.top, 10)
                }
            }
            
            // Bottom Navigation Bar
            HStack {
                Spacer()
                Button(action: {
                    // Navigate to Home
                }) {
                    VStack {
                        Image(systemName: "house.fill")
                            .font(.system(size: 24))
                            .foregroundColor(.red)
                        Text("Home")
                            .font(.footnote)
                            .foregroundColor(.red)
                    }
                }
                Spacer()
                Button(action: {
                    // Navigate to Explore
                }) {
                    VStack {
                        Image(systemName: "location.north.fill")
                            .font(.system(size: 24))
                            .foregroundColor(.red)
                        Text("Explore")
                            .font(.footnote)
                            .foregroundColor(.red)
                    }
                }
                Spacer()
                Button(action: {
                    // Navigate to Account
                }) {
                    VStack {
                        Image(systemName: "person.fill")
                            .font(.system(size: 24))
                            .foregroundColor(.red)
                        Text("Account")
                            .font(.footnote)
                            .foregroundColor(.red)
                    }
                }
                Spacer()
            }
            .padding()
            .background(Color.white)
            .shadow(radius: 5)
        }
        .background(Color.white)
    }
}

// Rider Card View
struct RiderCard: View {
    let rider: Rider
    
    var body: some View {
        VStack(alignment: .leading) {
            HStack {
                // Rider Image
                Image(rider.imageName)
                    .resizable()
                    .aspectRatio(contentMode: .fill)
                    .frame(width: 60, height: 60)
                    .clipShape(Circle())
                
                // Rider Info
                VStack(alignment: .leading) {
                    Text(rider.name)
                        .font(.headline)
                    Text("Level \(rider.level)")
                        .font(.subheadline)
                        .foregroundColor(.orange)
                }
                Spacer()
                // Distance and Responses
                VStack {
                    Text(rider.distance)
                        .font(.headline)
                        .foregroundColor(.orange)
                    Text("\(rider.responses) responses")
                        .font(.subheadline)
                        .foregroundColor(.gray)
                }
            }
            // Rider's Quote (optional)
            if let quote = rider.quote {
                Text("\"\(quote)\"")
                    .italic()
                    .foregroundColor(.gray)
                    .padding(.top, 5)
            }
            
            // Divider line between riders
            Divider()
                .padding(.top, 5)
        }
        .padding(10)
        .background(Color.white)
        .cornerRadius(10)
        .shadow(radius: 5)
    }
}

// Preview
struct RidersListView_Previews: PreviewProvider {
    static var previews: some View {
        RidersListView()
    }
}

