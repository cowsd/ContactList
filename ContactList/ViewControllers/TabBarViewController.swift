//
//  TabBarViewController.swift
//  ContactList
//
//  Created by Alex Pesenka on 14/07/24.
//

import UIKit

final class TabBarViewController: UITabBarController {
    
    private let persons = Person.generateRandomPersons()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        transferData()
    }
    

// MARK: - Private Methods
    private func transferData() {
        guard let viewControllers else { return }
        
        viewControllers.forEach { viewController in
            guard let navigationVC = viewController as? UINavigationController else { return }
            
            if let simpleListVC = navigationVC.topViewController as? SimpleListViewController {
                simpleListVC.persons = persons
            } else if let sectionedVC = navigationVC.topViewController as? SectionedListViewController {
                sectionedVC.persons = persons
            }
        }
    }
    
}
