//
//  PersonDetailsViewController.swift
//  KerrAppNew
//
//  Created by Александр Соболев on 02.01.2024.
//

import UIKit

protocol UserInfoViewControllerDelegate {
    func setColor(_ color: UIColor)
}

class PersonDetailsViewController: UIViewController {
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let userVC = segue.destination as! UserInfoViewController
        userVC.delegate = self
        userVC.viewColor = view.backgroundColor
    }
    
    @IBOutlet weak var photoImageView: UIImageView!
    @IBOutlet weak var personNameLabel: UILabel!
    @IBOutlet weak var postLabel: UILabel!
    @IBOutlet weak var cellPhoneLabel: UILabel!
    @IBOutlet weak var emailLabel: UILabel!
    
    var person: Person!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        photoImageView.image = UIImage(named: person.fullName)
        personNameLabel.text = person.fullName
        postLabel.text = person.post
        cellPhoneLabel.text = person.cellPhone
        emailLabel.text = person.email

    }
}


// MARK: - ColorDelegate
extension PersonDetailsViewController: UserInfoViewControllerDelegate {
    func setColor(_ color: UIColor) {
        view.backgroundColor = color
    }
}
