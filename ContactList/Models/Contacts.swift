//
//  Contacts.swift
//  ContactList
//
//  Created by Roman Lantsov on 02.03.2023.
//

import Foundation



struct Person: Equatable {
    let name: String
    let surname: String
    let phone: String
    let email: String
    
    var fullName: String {
        "\(name) \(surname)"
    }
    
    static func getPersons() -> [Person] {
        let data = DataStore()
        var persons: [Person] = []
        
        for _ in 1...data.names.count {
            let person = Person(
                name: getRandomElement(from: data.names),
                surname: getRandomElement(from: data.surnames),
                phone: getRandomElement(from: data.phones),
                email: getRandomElement(from: data.emails)
            )
            persons.append(person)

            data.names.removeAll { $0.hasPrefix(person.name) }
            data.surnames.removeAll { $0.hasPrefix(person.surname) }
            data.phones.removeAll { $0.hasPrefix(person.phone) }
            data.emails.removeAll { $0.hasPrefix(person.email) }
        }
        
        func getRandomElement(from elements: [String]) -> String {
            let randomElement = elements.randomElement()
            return randomElement ?? ""
        }
        
        return persons
    }
}


