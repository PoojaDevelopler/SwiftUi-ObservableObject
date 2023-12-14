//
//  ThirdView.swift
//  SwiftUi4-ObservableObject
//
//  Created by pnkbksh on 13/12/23.
//

import SwiftUI

struct ThirdView: View {
    
    @EnvironmentObject private var userData : UserData
    @EnvironmentObject private var account : Account

    
    var body: some View {
        Text("Hi \(userData.name)").bold()
            .foregroundColor(.red)
        Text("your account balance:-\(account.accountBalance)").bold()
            .foregroundColor(.green)

    }
}

struct ThirdView_Previews: PreviewProvider {
    static var previews: some View {
        ThirdView()
            .environmentObject(UserData())
            .environmentObject(Account())
    }
}
