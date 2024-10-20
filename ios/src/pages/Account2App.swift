//
//  Account2App.swift
//  Account2

import SwiftUI

struct AccountView: View {
    var body: some View {
        VStack {
            // Profile section
            VStack {
                Text("Account")
                    .font(.largeTitle)
                    .fontWeight(.bold)
                    .padding(.top)

                // Profile Image
                Image("profile") // Use your profile image here
                    .resizable()
                    .aspectRatio(contentMode: .fill)
                    .frame(width: 120, height: 120)
                    .clipShape(Circle())
                    .overlay(Circle().stroke(Color.white, lineWidth: 4))
                    .shadow(radius: 10)
                    .padding()

                // User's Name
                Text("Aishani Waghmare")
                    .font(.title2)
                    .fontWeight(.bold)
                    .padding(.bottom)
            }

            // Level and progress section
            VStack {
                Text("Level 2")
                    .font(.title)
                    .fontWeight(.semibold)
                    .foregroundColor(.white)
                    .padding()
                    .background(Color.red)
                    .cornerRadius(10)

                Text("800 points to next level")
                    .font(.subheadline)
                    .foregroundColor(.gray)

                // Progress Bar
                ProgressView(value: 5200, total: 6000)
                    .padding()
                    .progressViewStyle(LinearProgressViewStyle(tint: Color.red))

                Text("5200/6000")
                    .font(.footnote)
                    .foregroundColor(.gray)
            }
            .padding()

            // Activities section
            VStack(alignment: .leading, spacing: 20) {
                Text("Activities")
                    .font(.headline)

                HStack {
                    Image(systemName: "magnifyingglass")
                    Text("Search Friends")
                }
                
                HStack {
                    Image(systemName: "car.fill")
                    Text("Find Rides")
                }

                HStack {
                    Image(systemName: "star.fill")
                    Text("Redeem Points")
                }
            }
            .padding()
            .background(Color.gray.opacity(0.2))
            .cornerRadius(10)
            .padding()

            Spacer()

            // Bottom Navigation
            HStack {
                Spacer()

                VStack {
                    Image(systemName: "house.fill")
                    Text("Home")
                }
                Spacer()

                VStack {
                    Image(systemName: "location.fill")
                    Text("Explore")
                }
                Spacer()

                VStack {
                    Image(systemName: "person.crop.circle.fill")
                    Text("Account")
                }
                Spacer()
            }
            .padding()
            .background(Color.red)
            .foregroundColor(.white)
        }
    }
}

struct AccountView_Previews: PreviewProvider {
    static var previews: some View {
        AccountView()
    }
}

