//
//  DriverApp.swift
//  Driver

import SwiftUI
import MapKit

// Main View
struct MapView: View {
    @State private var selectedTab = "Carpool"
    @State private var searchText = ""
    @State private var region = MKCoordinateRegion(
        center: CLLocationCoordinate2D(latitude: 40.004583, longitude: -83.019851), // Sample coordinates
        span: MKCoordinateSpan(latitudeDelta: 0.01, longitudeDelta: 0.01)
    )
    
    var body: some View {
        VStack {
            // Title
            Text("Map of Riders")
                .font(.largeTitle)
                .fontWeight(.bold)
                .padding(.top, 20)
            
            // Toggle Buttons for Carpool, Routes, Safety
            HStack {
                Button(action: {
                    selectedTab = "Carpool"
                }) {
                    Text("Carpool")
                        .foregroundColor(selectedTab == "Carpool" ? .white : .red)
                        .frame(width: 100, height: 40)
                        .background(selectedTab == "Carpool" ? Color.red : Color.gray.opacity(0.2))
                        .cornerRadius(10)
                }
                
                Button(action: {
                    selectedTab = "Routes"
                }) {
                    Text("Routes")
                        .foregroundColor(selectedTab == "Routes" ? .white : .red)
                        .frame(width: 100, height: 40)
                        .background(selectedTab == "Routes" ? Color.red : Color.gray.opacity(0.2))
                        .cornerRadius(10)
                }
                
                Button(action: {
                    selectedTab = "Safety"
                }) {
                    Text("Safety")
                        .foregroundColor(selectedTab == "Safety" ? .white : .red)
                        .frame(width: 100, height: 40)
                        .background(selectedTab == "Safety" ? Color.red : Color.gray.opacity(0.2))
                        .cornerRadius(10)
                }
            }
            .padding(.horizontal)
            .padding(.top, 10)
            
            // Map with Search Bar
            ZStack(alignment: .top) {
                Map(coordinateRegion: $region)
                    .cornerRadius(15)
                    .frame(height: 300)
                    .padding(.horizontal)
                
                HStack {
                    Image(systemName: "magnifyingglass")
                        .foregroundColor(.gray)
                    TextField("Search here", text: $searchText)
                        .padding(10)
                        .background(Color.white)
                        .cornerRadius(10)
                        .shadow(radius: 2)
                }
                .padding()
            }
            .padding(.top, 10)
            
            // Find Riders Button
            Button(action: {
                // Add functionality for finding riders
                print("Find Riders Button Pressed")
            }) {
                Text("Find riders")
                    .foregroundColor(.white)
                    .fontWeight(.bold)
                    .frame(width: 250, height: 50)
                    .background(Color.gray)
                    .cornerRadius(10)
                    .padding(.top, 10)
            }
            
            Spacer()
            
            // Bottom Navigation (can be extracted into a reusable component)
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

// Preview
struct MapView_Previews: PreviewProvider {
    static var previews: some View {
        MapView()
    }
}

