//
//  PersonViewController.swift
//  AboutMeApp
//
//  Created by Mikhail Tabakaev on 4/5/24.
//

import UIKit

final class PersonInfoViewController: UIViewController {
    
    // MARK: - IB Outlets
    @IBOutlet var photoImage: UIImageView! {
        didSet {
            photoImage.layer.cornerRadius = photoImage.frame.width / 2
        }
    }
    
    @IBOutlet var givenNameLable: UILabel!
    @IBOutlet var surnameLabel: UILabel!
    @IBOutlet var jobLable: UILabel!
    @IBOutlet var departmentLabel: UILabel!
    @IBOutlet var jobTitleLabel: UILabel!
    
    var user: User!
  
    // MARK: - Overrides Methods
    override func viewDidLoad() {
        super.viewDidLoad()
        view.addVerticalGradientLayer()
        photoImage.image = UIImage(named: user.person.photo)
        title = user.person.fullName
        givenNameLable.text = user.person.givenName
        surnameLabel.text = user.person.surname
        jobLable.text = user.person.job.title
        departmentLabel.text = user.person.job.departament.rawValue
        jobTitleLabel.text = user.person.job.jobTitle.rawValue
        
        print("User ID: ", user.id)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let userBioVC = segue.destination as? BioViewController else { return }
        userBioVC.user = user
    }
}
