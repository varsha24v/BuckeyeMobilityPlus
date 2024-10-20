import SwiftUI

struct LoginScreen: View {
    @State private var email = ""
    @State private var password = ""
    
    var body: some View {
        VStack {
            Spacer()
            
            Text("Login Required")
                .font(.largeTitle)
                .fontWeight(.semibold)
                .padding(.bottom, 40)
            
            // Email TextField
            TextField("Ohio State Email", text: $email)
                .padding()
                .background(Color(.systemGray6))
                .cornerRadius(8)
                .padding(.horizontal, 24)
                .autocapitalization(.none)
                .keyboardType(.emailAddress)

            // Password SecureField
            SecureField("Password", text: $password)
                .padding()
                .background(Color(.systemGray6))
                .cornerRadius(8)
                .padding(.horizontal, 24)

            // Login Button
            Button(action: {
                // Handle login action here
                print("Login button tapped")
            }) {
                Text("Login")
                    .font(.headline)
                    .foregroundColor(.white)
                    .frame(maxWidth: .infinity)
                    .padding()
                    .background(Color.red)
                    .cornerRadius(10)
                    .padding(.horizontal, 24)
            }
            .padding(.top, 20)
            
            Spacer()
        }
        .background(Color.white)
        .ignoresSafeArea()
    }
}

struct LoginScreen_Previews: PreviewProvider {
    static var previews: some View {
        LoginScreen()
    }
}
