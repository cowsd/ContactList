//
//  SimpleListViewController.swift
//  ContactList
//
//  Created by Alex Pesenka on 13/07/24.
//

import UIKit

final class SimpleListViewController: UITableViewController {
    
    private let persons = Person.generateRandomPersons()
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let indexPath = tableView.indexPathForSelectedRow else { return }
        let personDetailsVC = segue.destination as? PersonDetailsViewController
        personDetailsVC?.person = persons[indexPath.row]
    }
}

// MARK: - UITableViewDataSource

extension SimpleListViewController {
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        persons.count
    }
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "personCell", for: indexPath)
        let person = persons[indexPath.row]
        
        var content = cell.defaultContentConfiguration()
        content.text = person.fullName
        content.textProperties.font = UIFont.systemFont(ofSize: 18)
        
        cell.contentConfiguration = content
        return cell
    }
}
