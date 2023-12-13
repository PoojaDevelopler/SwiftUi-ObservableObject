//
//  User.swift
//  SwiftUi4-ObservableObject
//
//  Created by pnkbksh on 13/12/23.
//

import Foundation
class UserData: ObservableObject {
    @Published var name: String = ""
    @Published var lastName: String = ""
}
