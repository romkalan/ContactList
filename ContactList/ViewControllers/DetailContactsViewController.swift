//
//  DetailContactsViewController.swift
//  ContactList
//
//  Created by Roman Lantsov on 02.03.2023.
//

import UIKit

final class DetailContactsViewController: UITableViewController {

    var contacts: [Person]!
}

// MARK: - UITableViewDataSource
extension DetailContactsViewController {

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
        var content = cell.defaultContentConfiguration()
        let contact = contacts[indexPath.section]
        
        content.text = indexPath.row == 1 ? contact.email : contact.phone
        content.image = indexPath.row == 1 ? UIImage(systemName: "tray") : UIImage(systemName: "phone")

        cell.contentConfiguration = content
        
        return cell
    }
    
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        2
    }
    
    override func numberOfSections(in tableView: UITableView) -> Int {
        contacts.count
    }
    
    override func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        let indexPath = section
        return contacts[indexPath].fullName
    }
    
}

