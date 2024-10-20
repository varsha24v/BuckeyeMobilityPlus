//
//  ProfileeditApp.swift
//  Profileedit

import SwiftUI

struct EditProfileView: View {
    @State private var username = "waghmare.7"
    @State private var email = "waghmare.7@osu.edu"
    @State private var phoneNumber = "+14987889999"
    @State private var password = "admin@EZ345"
    
    var body: some View {
        VStack {
            // Header
            HStack {
                Button(action: {
                    // Back action
                }) {
                    Image(systemName: "chevron.left")
                        .font(.title2)
                        .foregroundColor(.white)
                }
                
                Spacer()
                
                Text("Edit Profile")
                    .font(.title2)
                    .fontWeight(.bold)
                    .foregroundColor(.white)
                
                Spacer()
                
                Button(action: {
                    // Share action
                }) {
                    Image(systemName: "square.and.arrow.up")
                        .font(.title2)
                        .foregroundColor(.white)
                }
            }
            .padding()
            .background(Color.red)
            
            // Profile Picture
            VStack {
                Image("profilePicture")  // Add your own image or use the asset from the app
                    .resizable()
                    .aspectRatio(contentMode: .fill)
                    .frame(width: 120, height: 120)
                    .clipShape(Circle())
                    .overlay(Circle().stroke(Color.white, lineWidth: 4))
                    .shadow(radius: 10)
                    .padding(.top, -40)
                
                Button(action: {
                    // Action to change picture
                }) {
                    Text("Add/Edit Picture")
                        .font(.subheadline)
                        .foregroundColor(.gray)
                }
            }
            
            // Form Fields
            VStack(spacing: 20) {
                TextField("Username", text: $username)
                    .padding()
                    .background(Color.white)
                    .cornerRadius(8)
                    .shadow(radius: 2)
                    .disableAutocorrection(true)

                TextField("Email", text: $email)
                    .padding()
                    .background(Color.white)
                    .cornerRadius(8)
                    .keyboardType(.emailAddress)
                    .disableAutocorrection(true)
                    .shadow(radius: 2)
                
                TextField("Phone Number", text: $phoneNumber)
                    .padding()
                    .background(Color.white)
                    .cornerRadius(8)
                    .keyboardType(.phonePad)
                    .shadow(radius: 2)
                
                SecureField("Password", text: $password)
                    .padding()
                    .background(Color.white)
                    .cornerRadius(8)
                    .shadow(radius: 2)
            }
            .padding()
            
            Spacer()
            
            // Update Button
            Button(action: {
                // Action to update profile
            }) {
                Text("Update")
                    .font(.headline)
                    .foregroundColor(.white)
                    .frame(maxWidth: .infinity)
                    .padding()
                    .background(Color.red)
                    .cornerRadius(8)
                    .padding(.horizontal)
            }
        }
        .background(Color(UIColor.systemGray6))  // Light background color
        .edgesIgnoringSafeArea(.top)
    }
}

struct EditProfileView_Previews: PreviewProvider {
    static var previews: some View {
        EditProfileView()
    }
}


