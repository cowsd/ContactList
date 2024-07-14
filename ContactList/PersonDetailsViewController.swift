//
//  PersonDetailsViewController.swift
//  ContactList
//
//  Created by Alex Pesenka on 13/07/24.
//

import UIKit

final class PersonDetailsViewController: UIViewController {
    
    @IBOutlet weak var phoneNumberLabel: UILabel!
    @IBOutlet weak var emailLabel: UILabel!
    
    var person: Person!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.title = person.fullName
        phoneNumberLabel.text = person.phoneNumber
        emailLabel.text = person.email
    }
    
}
