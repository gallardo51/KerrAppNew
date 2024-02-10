//
//  QuestionsViewController.swift
//  KerrAppNew
//
//  Created by Александр Соболев on 30.01.2024.
//

import UIKit

class QuestionsViewController: UIViewController {
    
    @IBOutlet weak var questionLabel: UILabel!
    @IBOutlet weak var questionProgressView: UIProgressView!
    
    @IBOutlet var answerChosenButtons: [UIButton]!
    
    private let questions = Question.getQuestions()
    private var answersChosen: [Answer] = []
    private var currentAnswers: [Answer] {
        questions[questionIndex].answers
    }
    private var questionIndex = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        updateUI()
        
    }
    
    @IBAction func answerButtonPressed(_ sender: UIButton) {
        guard let buttonIndex = answerChosenButtons.firstIndex(of: sender) else { return }
        let currentAnswer = currentAnswers[buttonIndex]
        answersChosen.append(currentAnswer)
        
        nextQuestion()
    }
    
}

extension QuestionsViewController {
    private func updateUI() {
        
        let currentQuestion = questions[questionIndex]
        
        questionLabel.text = currentQuestion.title
        
        let totalProgress = Float(questionIndex) / Float(questions.count)
        
        questionProgressView.setProgress(totalProgress, animated: true)
        
        title = "Вопрос № \(questionIndex + 1) из \(questions.count)"
        
        showCurrentAnswers(with: currentAnswers)
    }
    
    private func showCurrentAnswers(with answers: [Answer]) {
        for (button, answer) in zip(answerChosenButtons, answers) {
            button.setTitle(answer.title, for: .normal)
        }
    }
    private func nextQuestion() {
        questionIndex += 1
        
        if questionIndex < questions.count {
            updateUI()
            return
        }
        
        performSegue(withIdentifier: "showResult", sender: nil)
    }
}
