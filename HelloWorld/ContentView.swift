//
//  ContentView.swift
//  HelloWorld
//
//  Created by Rajrishi Vishwakarma on 22/05/23.
//

import SwiftUI

struct ContentView: View {
    @State private var firstName = ""
    @State private var lastName = ""
    @State private var birthDate = Date()
    @State private var shouldSendNewLetter = true
    @State private var numberOfLikes = 1
    
    var body: some View {
        NavigationView{
            Form{
                Section(header:  Text("Personal Information")){
                    TextField("First Name", text: $firstName)
                    TextField("Last Name", text: $lastName)
                    DatePicker("Birthdate", selection: $birthDate, displayedComponents: .date)
                }
                Section(header: Text("Actions")){
                    Toggle("Send news letter", isOn: $shouldSendNewLetter)
                        .toggleStyle(SwitchToggleStyle(tint: .red))
                    Stepper("Number of likes", value: $numberOfLikes, in: 1...100)
                    Text("This video has \(numberOfLikes) likes")
                    Link("Terms Of Service", destination: URL(string: "https://cd-x.github.io")!)
                }
            }
            .navigationTitle("Account")
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            .preferredColorScheme(.dark)
            .previewInterfaceOrientation(.portrait)
            
    }
}
