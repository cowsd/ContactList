//
//  User.swift
//  ContactList
//
//  Created by Alex Pesenka on 13/07/24.
//

struct Person {
    let firstName: String
    let lastName: String
    let email: String
    let phoneNumber: String
    
    var fullName: String {
        "\(firstName) \(lastName)"
    }
    
    static func generateRandomPersons() -> [Person] {
        let datastore = DataStore()
        var randomUsers: [Person] = []
        
        let firstNames = datastore.firstNames.shuffled()
        let lastNames = datastore.lastNames.shuffled()
        let emails = datastore.emails.shuffled()
        let phoneNumbers = datastore.phoneNumbers.shuffled()
        
        let minCount = min(firstNames.count, lastNames.count, emails.count, phoneNumbers.count)
        
        for index in 0..<minCount {
            let user = Person(firstName: firstNames[index], lastName: lastNames[index], email: emails[index], phoneNumber: phoneNumbers[index])
            randomUsers.append(user)
        }
        
        return randomUsers
    }
    
}
