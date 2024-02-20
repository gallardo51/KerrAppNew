//
//  LogInViewController.swift
//  KerrAppNew
//
//  Created by Александр Соболев on 07.01.2024.
//

import UIKit

protocol UserInfoViewControllerDelegate {
    func setColor(_ color: UIColor)
}

class LogInViewController: UIViewController {
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let navigationVC = segue.destination as? UINavigationController else { return }
        guard let userVC = navigationVC.topViewController as? UserInfoViewController else { return }
        userVC.delegate = self
        userVC.viewColor = view.backgroundColor
    }
    
    
//    private let user = User.getUserData()
//    
//    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
//        guard let tabBarController = segue.destination as? UITabBarController else { return }
//        guard let viewControllers = tabBarController.viewControllers else { return }
//        
//        for viewController in viewControllers {
//            if let loginVC = viewController as? UserInfoViewController {
//                loginVC.user = user
//            }
//        }
//    }

    override func viewDidLoad() {
        super.viewDidLoad()
    }

}
// MARK: - ColorDelegate
extension LogInViewController: UserInfoViewControllerDelegate {
    func setColor(_ color: UIColor) {
        view.backgroundColor = color
    }
}
