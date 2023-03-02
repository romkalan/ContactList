//
//  TabBarController.swift
//  ContactList
//
//  Created by Roman Lantsov on 02.03.2023.
//

import UIKit

class TabBarController: UITabBarController {

    private let contacts = Person.getPersons()

    override func viewDidLoad() {
        super.viewDidLoad()
        getContactsData()
    }
    
    private func getContactsData() {
        guard let tableViewControllers = viewControllers else { return }
        for tableVC in tableViewControllers {
            if let contactsVC = tableVC as? ContactsViewController {
                contactsVC.contacts = contacts
            } else if let detailContactsVC = tableVC as? DetailContactsViewController {
                detailContactsVC.contacts = contacts
            }
        }
    }
}
