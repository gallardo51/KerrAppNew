//
//  Question.swift
//  KerrAppNew
//
//  Created by Александр Соболев on 07.01.2024.
//

struct Question {
    let title: String
    let answers: [Answer]
    
    static func getQuestions() -> [Question] {
        [
            Question(
                title: "Какой композитный материал Вы используете в работе?",
                answers:
                    [
                        Answer(title: "Harmonize"),
                        Answer(title: "Estelite Sigma Quick"),
                        Answer(title: "Estelite Asteria"),
                        Answer(title: "Filtek Ultimate"),
                        Answer(title: "Tetrci-n-Ceram"),
                        Answer(title: "Ceram X Spheretec"),
                        Answer(title: "Ceram X Neo Spectra"),
                        Answer(title: "Igos")
                    ]
            ),
            Question(
                title: "Какой адгезив Вы используете в работе?",
                answers:
                    [
                        Answer(title: "Optibond FL"),
                        Answer(title: "Optibond Solo Plus"),
                        Answer(title: "Optibond Universal"),
                        Answer(title: "Bondforce 2"),
                        Answer(title: "Bondforce Universal"),
                        Answer(title: "G-Bond"),
                        Answer(title: "Prime&Bond Universal"),
                        Answer(title: "Prime&Bond гавно")
                    ]
            )
        ]
    }
}

struct Answer {
    let title: String
}
