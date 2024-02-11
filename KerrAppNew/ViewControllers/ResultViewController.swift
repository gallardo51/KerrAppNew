//
//  ResultViewController.swift
//  KerrAppNew
//
//  Created by Александр Соболев on 07.01.2024.
//

import UIKit

class ResultViewController: UIViewController {
    
    @IBOutlet weak var resultLabel: UILabel!
    
    var answers: [Answer]!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        updateUI(with: answers)
        
    }
    
    private func updateUI(with answer: [Answer]) {
        
        for (index, value) in answer.enumerated() {
            resultLabel.text = "Вопрос \(index + 1): \(value.title)"
            print(value)
        }
    }
}
