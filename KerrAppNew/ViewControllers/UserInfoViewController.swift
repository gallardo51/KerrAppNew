//
//  UserInfoViewController.swift
//  KerrAppNew
//
//  Created by Александр Соболев on 21.01.2024.
//

import UIKit

class UserInfoViewController: UIViewController {
    @IBOutlet weak var userImageView: UIImageView! {
        didSet {
            userImageView.layer.cornerRadius = userImageView.frame.width / 2
        }
    }
    @IBOutlet weak var fullNameLabel: UILabel!
    @IBOutlet weak var bornDateLabel: UILabel!
    @IBOutlet weak var cellPhoneLabel: UILabel!
    @IBOutlet weak var emailLabel: UILabel!
    
    private let user = User.getUserData()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        userImageView.image = UIImage(named: user.subject.userImage)
        fullNameLabel.text = "\(user.subject.fullName)"
        bornDateLabel.text = "\(user.subject.bornDate)"
        cellPhoneLabel.text = "\(user.subject.cellPhone)"
        emailLabel.text = "\(user.subject.email)"
        
    }
}
