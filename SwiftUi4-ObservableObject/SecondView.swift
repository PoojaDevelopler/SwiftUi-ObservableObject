//
//  SecondView.swift
//  SwiftUi4-ObservableObject
//
//  Created by pnkbksh on 13/12/23.
//

import SwiftUI

struct SecondView: View {
    
    @EnvironmentObject var account:Account
    var body: some View {
        VStack{
            
            Stepper("Balance \(account.accountBalance)", value: $account.accountBalance)
//            TextField("Enter your  name", value: $account.accountBalance, formatter: NumberFormatter())
//                .textFieldStyle(RoundedBorderTextFieldStyle())
                
            NavigationLink("Navigate", destination: ThirdView())
            
            
        }.padding()
    }
}

struct SecondView_Previews: PreviewProvider {
    static var previews: some View {
        SecondView()
            .environmentObject(Account())

    }
}
