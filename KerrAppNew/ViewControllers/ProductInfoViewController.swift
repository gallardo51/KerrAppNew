//
//  ProductInfoViewController.swift
//  KerrAppNew
//
//  Created by Александр Соболев on 21.01.2024.
//

import UIKit

class ProductInfoViewController: UIViewController {
    
    var item: Item!
    
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var descriptionLabel: UILabel!
    @IBOutlet weak var advantageLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        nameLabel.text = item.name
        descriptionLabel.text = item.description
        advantageLabel.text = item.advantage
    }
}
