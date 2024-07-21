//
//  TabBarViewController.swift
//  ContactList
//
//  Created by Alex Pesenka on 14/07/24.
//

import UIKit

final class TabBarViewController: UITabBarController {
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        transferData()
    }
    

// MARK: - Private Methods
    private func transferData() {
        guard let simpleListVC = viewControllers?.first as? SimpleListViewController else { return }
        guard let sectionedVC = viewControllers?.last as? SectionedListViewController else { return }
        
        let persons = Person.generateRandomPersons()
        simpleListVC.persons = persons
        sectionedVC.persons = persons
    }
}
