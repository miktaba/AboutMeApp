//
//  BioViewController.swift
//  AboutMeApp
//
//  Created by Mikhail Tabakaev on 4/4/24.
//

import UIKit

final class BioViewController: UIViewController {
    
    // MARK: - IB Outlets
    @IBOutlet var userBioTextView: UITextView!
    
    var user: User!

    // MARK: - Overrides Methods
    override func viewDidLoad() {
        super.viewDidLoad()
        view.addVerticalGradientLayer()
        title = "\(user.person.fullName) Bio"
        userBioTextView.backgroundColor = .clear
        userBioTextView.textColor = .black
        userBioTextView.text = user.person.bio
        
        print("User ID: ", user.id)
    }
}
