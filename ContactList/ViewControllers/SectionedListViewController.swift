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
        persons[section].rows.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "sectionedCell", for: indexPath)
        let person = persons[indexPath.section]
        
        var content = cell.defaultContentConfiguration()
        content.text = person.rows[indexPath.row]
        
        content.image = indexPath.row == 0
        ? UIImage(systemName: "phone")
        : UIImage(systemName: "envelope")
        
        cell.contentConfiguration = content
        return cell
    }
}

// MARK: - UITableViewDelegate

extension SectionedListViewController {
    override func tableView(_ tableView: UITableView, shouldHighlightRowAt indexPath: IndexPath) -> Bool {
        false
    }
    
    override func tableView(_ tableView: UITableView, viewForHeaderInSection section: Int) -> UIView? {
        let contentView = UIView()
        contentView.backgroundColor = .gray
        
        let fullNameLabel = UILabel(
            frame: CGRect(
                x: 16,
                y: 3,
                width: tableView.frame.width - 32,
                height: 20
            )
        )
        fullNameLabel.text = persons[section].fullName
        fullNameLabel.font = UIFont.boldSystemFont(ofSize: 17)
        fullNameLabel.textColor = .white
        
        contentView.addSubview(fullNameLabel)
        
        return contentView
    }
    
}

