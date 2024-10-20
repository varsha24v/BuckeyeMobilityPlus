import SwiftUI

// Driver Model
struct Driver: Identifiable {
    let id = UUID()
    let name: String
    let level: Int
    let waitTime: String
    let responses: Int
    let feedback: String
}

// Example Data
let drivers = [
    Driver(name: "Disha Patel", level: 7, waitTime: "~1 min", responses: 20, feedback: ""),
    Driver(name: "Pralay Ray", level: 2, waitTime: "~2 min", responses: 52, feedback: ""),
    Driver(name: "Reyhan Can", level: 1, waitTime: "~10 min", responses: 11, feedback: "bad driver, smelly car")
]

// Main View
struct ContentView: View {
    @State private var showNow = true
    
    var body: some View {
        VStack {
            // Title
            Text("List of Drivers")
                .font(.largeTitle)
                .fontWeight(.bold)
                .padding(.top, 20)
            
            // Toggle between Now and Later
            HStack {
                Button(action: {
                    showNow = true
                }) {
                    Text("Now")
                        .foregroundColor(showNow ? .white : .red)
                        .frame(width: 150, height: 50)
                        .background(showNow ? Color.red : Color.gray.opacity(0.1))
                        .cornerRadius(10)
                }
                
                Button(action: {
                    showNow = false
                }) {
                    Text("Later")
                        .foregroundColor(showNow ? .red : .white)
                        .frame(width: 150, height: 50)
                        .background(showNow ? Color.gray.opacity(0.1) : Color.red)
                        .cornerRadius(10)
                }
            }
            .padding()
            
            // List of Drivers
            List(drivers) { driver in
                DriverRow(driver: driver)
            }
        }
        .background(Color.white)
    }
}

// Row View for Each Driver
struct DriverRow: View {
    var driver: Driver
    
    var body: some View {
        VStack {
            HStack {
                // Driver Image (Placeholder)
                Image(systemName: "person.crop.circle.fill")
                    .resizable()
                    .frame(width: 60, height: 60)
                    .clipShape(Circle())
                    .padding(.trailing, 10)
                
                // Driver Info
                VStack(alignment: .leading) {
                    Text(driver.name)
                        .font(.headline)
                    Text("Level \(driver.level)")
                        .font(.subheadline)
                        .foregroundColor(.gray)
                }
                
                Spacer()
                
                // Wait Time
                VStack {
                    Text(driver.waitTime)
                        .font(.headline)
                        .foregroundColor(.orange)
                    Text("\(driver.responses) responses")
                        .font(.footnote)
                        .foregroundColor(.gray)
                }
            }
            
            // Feedback (if any)
            if !driver.feedback.isEmpty {
                Text(driver.feedback)
                    .italic()
                    .foregroundColor(.gray)
                    .padding(.top, 5)
            }
        }
        .padding()
        .background(Color.white)
        .cornerRadius(10)
        .shadow(radius: 2)
    }
}

// Preview
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
