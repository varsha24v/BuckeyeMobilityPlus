//
//  SearchfriendsApp.swift
//  Searchfriends

import SwiftUI

import SwiftUI

struct Friend: Identifiable {
    let id = UUID()
    let name: String
    let level: String
    let levelColor: Color
}

struct SearchFriendsView: View {
    // Sample data
    let friends = [
        Friend(name: "Alana Gorukanti", level: "Level 5", levelColor: .green),
        Friend(name: "Sai Pokuri", level: "Level 1", levelColor: .pink),
        Friend(name: "Varsha Venkateshwaran", level: "Level 2", levelColor: .yellow)
    ]

    var body: some View {
        VStack {
            // Header
            HStack {
                Button(action: {
                    // Back button action
                }) {
                    Image(systemName: "chevron.left")
                        .font(.title2)
                        .foregroundColor(.white)
                }

                Text("Search Friends")
                    .font(.title2)
                    .foregroundColor(.white)
                    .fontWeight(.bold)
                
                Spacer()
            }
            .padding()
            .background(Color.red)
            
            // List of friends
            ScrollView {
                ForEach(friends) { friend in
                    HStack {
                        VStack(alignment: .leading) {
                            Text(friend.name)
                                .font(.headline)
                            
                            Text(friend.level)
                                .font(.subheadline)
                                .fontWeight(.bold)
                                .foregroundColor(friend.levelColor)
                                .padding(.horizontal, 8)
                                .padding(.vertical, 4)
                                .background(friend.levelColor.opacity(0.1))
                                .cornerRadius(8)
                        }
                        
                        Spacer()

                        // Message Button
                        Button(action: {
                            // Action for messaging
                        }) {
                            Image(systemName: "paperplane.fill")
                                .foregroundColor(.red)
                        }
                        .padding()

                        // Add Friend Button
                        Button(action: {
                            // Action for adding friend
                        }) {
                            Image(systemName: "person.crop.circle.fill.badge.plus")
                                .foregroundColor(.green)
                        }
                        .padding()
                    }
                    .padding()
                    .background(Color.white)
                    .cornerRadius(10)
                    .shadow(radius: 2)
                    .padding(.horizontal)
                    .padding(.top, 10)
                }
            }
            .background(Color.gray.opacity(0.1))
        }
    }
}

struct SearchFriendsView_Previews: PreviewProvider {
    static var previews: some View {
        SearchFriendsView()
    }
}

