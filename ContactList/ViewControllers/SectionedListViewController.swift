//
//  PersonSectionedListViewController.swift
//  ContactList
//
//  Created by Alex Pesenka on 14/07/24.
//

import UIKit

final class SectionedListViewController: UITableViewController {
    
    var persons: [Person]!
    
}

// MARK: - UITableViewDataSource

extension SectionedListViewController {
    
    override func numberOfSections(in tableView: UITableView) -> Int {
        persons.count
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        2
    }
    
    override func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        persons[section].fullName
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "sectionedCell", for: indexPath)
        let person = persons[indexPath.section]
        
        var content = cell.defaultContentConfiguration()
        
        if indexPath.row == 0 {
            content.text = person.phoneNumber
            content.image = UIImage(systemName: "phone")
        } else {
            content.text = person.email
            content.image = UIImage(systemName: "envelope")
        }
        cell.contentConfiguration = content
        return cell
    }
}

// MARK: - UITableViewDelegate

extension SectionedListViewController {
    override func tableView(_ tableView: UITableView, shouldHighlightRowAt indexPath: IndexPath) -> Bool {
        false
    }
}

