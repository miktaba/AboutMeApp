//
//  TabBarViewController.swift
//  AboutMeApp
//
//  Created by Mikhail Tabakaev on 4/4/24.
//

import UIKit

final class TabBarViewController: UITabBarController {
    var user: User!

    // MARK: - Overrides Methods
    override func viewDidLoad() {
        super.viewDidLoad()
        let tabBarAppearance = UITabBarAppearance()
        tabBarAppearance.configureWithOpaqueBackground()
        tabBar.standardAppearance = tabBarAppearance
        tabBar.scrollEdgeAppearance = tabBarAppearance
        
        tabBar.items?.last?.title = user.person.fullName
        
        transferData()
    }
    
    // MARK: - Private Methods
    private func transferData() {
        guard let viewControllers else { return }
        
        viewControllers.forEach {
            if let welcomeVC = $0 as? WelcomeViewController {
                welcomeVC.user = user
            } else if let navigationVC = $0 as? UINavigationController {
                let userInfoVC = navigationVC.topViewController
                guard let userInfoVC = userInfoVC as? PersonInfoViewController else {
                    return
                }
                userInfoVC.user = user
            }
        }
    }
}

