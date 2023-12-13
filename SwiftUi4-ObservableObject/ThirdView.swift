//
//  ThirdView.swift
//  SwiftUi4-ObservableObject
//
//  Created by pnkbksh on 13/12/23.
//

import SwiftUI

struct ThirdView: View {
    
    @EnvironmentObject private var userData : UserData
    
    var body: some View {
        Text("Hi \(userData.name)")
        Text("This is your quote:")
        Text(userData.quote)
            .italic()
    }
}

struct ThirdView_Previews: PreviewProvider {
    static var previews: some View {
        ThirdView()
            .environmentObject(UserData())
    }
}
