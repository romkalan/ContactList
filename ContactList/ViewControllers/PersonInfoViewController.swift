//
//  PersonInfoViewController.swift
//  ContactList
//
//  Created by Roman Lantsov on 02.03.2023.
//

import UIKit

final class PersonInfoViewController: UIViewController {

    @IBOutlet var phoneNumberLabel: UILabel!
    @IBOutlet var emailAdressLabel: UILabel!
    
    var person: Person!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        navigationItem.title = person.fullName
        phoneNumberLabel.text = person.phone
        emailAdressLabel.text = person.email
    }

}
