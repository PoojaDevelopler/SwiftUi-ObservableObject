//
//  ContentView.swift
//  SwiftUi4-ObservableObject
//
//  Created by pnkbksh on 13/12/23.
//

import SwiftUI

struct ContentView: View {
    @ObservedObject private var userData : UserData = UserData()
    @State private var displayedGreeting: String = ""
    
    let greetings = ["😃 How are you?",
                     "This code creates a simple SwiftUI view " ,
                     "Growing every day, one step at a time." ,
                     "Embracing every moment, creating my story." ]
    
    var isFirstNameEmpty  :Bool{
        userData.name.trimmingCharacters(in: .whitespacesAndNewlines).isEmpty
    }
    
   
    
    var body: some View {
        VStack {
            Text("Hello...😃")
                .multilineTextAlignment(.center)
                .font(.title)
                .bold()
                .foregroundColor(.mint)
                .padding()
            
            Text("\(userData.name) \(userData.lastName)")
                .multilineTextAlignment(.center)
                .font(.title2)
                .bold()
                .foregroundColor(.mint)
                .padding()
            
            Text("\(displayedGreeting) " )
                .multilineTextAlignment(.center)
                .lineLimit(10)
                .font(.title3)
                .foregroundColor(.mint)
                .padding()
                .fixedSize(horizontal: false, vertical: true)
            Spacer()
          
            
            TextField("Enter your  name", text: $userData.name)
                .textFieldStyle(RoundedBorderTextFieldStyle())
                .padding()
          
            
            Button(action: {
                    displayedGreeting = greetings.randomElement() ?? ""

            }, label: {
                Text("Get ur quote of the day 😇")
                    .lineLimit(1)
            })
            .padding()
            .disabled(isFirstNameEmpty )
            .buttonStyle(MyButtonStyle(isDisabled: isFirstNameEmpty))

        }
        .padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

struct MyButtonStyle: ButtonStyle {
    let isDisabled: Bool
    
    func makeBody(configuration: Self.Configuration) -> some View {
        configuration.label
            .foregroundColor(.white)
            .padding()
            .cornerRadius(8)
            .padding(.horizontal)
            .background(isDisabled ? Color.gray : Color.mint)
    }
}
