//
//  WelcomeViewController.swift
//  AboutMeApp
//
//  Created by Mikhail Tabakaev on 4/4/24.
//

import UIKit

final class WelcomeViewController: UIViewController {
    // MARK: - IB Outlets
    @IBOutlet var welcomeLabel: UILabel!
    
    var user: User!
   
    // MARK: - Overrides Methods
    override func viewDidLoad() {
        super.viewDidLoad()
        view.addVerticalGradientLayer()
        welcomeLabel.text = """
            Welcome, \(user.login)!
            My name is \(user.person.fullName)
            """
        
        print("User ID: ", user.id)
    }
}
