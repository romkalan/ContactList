//
//  ContactsViewController.swift
//  ContactList
//
//  Created by Roman Lantsov on 02.03.2023.
//

import UIKit

final class ContactsViewController: UITableViewController {

    var contacts: [Person]!
    
    override func viewDidLoad() {
        navigationItem.title = "Person list"
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let personVC = segue.destination as? PersonInfoViewController
        personVC?.person = sender as? Person
    }
}


// MARK: - UITableViewDataSource
extension ContactsViewController {

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "contact", for: indexPath)
        
        var content = cell.defaultContentConfiguration()
        let contact = contacts[indexPath.row]
        content.text = contact.fullName
        cell.contentConfiguration = content
        
        return cell
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        contacts.count
    }
}

extension ContactsViewController {
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let contact = contacts[indexPath.row]
        performSegue(withIdentifier: "ShowPerson", sender: contact)
    }
}

