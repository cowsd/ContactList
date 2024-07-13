//
//  User.swift
//  ContactList
//
//  Created by Alex Pesenka on 13/07/24.
//

import Foundation

struct User {
    let firstName: String
    let lastName: String
    let email: String
    let phoneNumber: String
    
    static func generateRandomUsers() -> [User] {
        let datastore = Datastore()
        var randomUsers: [User] = []
        
        let firstNames = datastore.firstNames.shuffled()
        let lastNames = datastore.lastNames.shuffled()
        let emails = datastore.emails.shuffled()
        let phoneNumbers = datastore.phoneNumbers.shuffled()
        
        let minCount = min(firstNames.count, lastNames.count, emails.count, phoneNumbers.count)
        
        for index in 0..<minCount {
            let user = User(firstName: firstNames[index], lastName: lastNames[index], email: emails[index], phoneNumber: phoneNumbers[index])
            randomUsers.append(user)
        }
        
        return randomUsers
    }
    
}
