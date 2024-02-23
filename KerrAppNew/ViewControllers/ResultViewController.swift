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
        resultLabel.text = "Вопрос 1: \(answer[0].title),\nВопрос 2: \(answer[1].title), \nВопрос 3: \(answer[2].title), \nВопрос 4: \(answer[3].title), \nВопрос 5: \(answer[4].title), \nВопрос 6: \(answer[5].title)."
        }
    }
