//
//  ViewController.swift
//  ContactList
//
//  Created by Alex Pesenka on 13/07/24.
//

import UIKit

final class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        let user = User.generateRandomUsers()
        print(user)
    }


}

