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
                title: "Какой композитный материал Вы используете при фронтальной работе?",
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
            ),
            Question(
                title: "Какой композитный материал Вы используете при работе на жевательной группе зубов?",
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
                title: "Какой текучий композит Вы предпочитаете?",
                answers:
                    [
                        Answer(title: "Estelite Universal"),
                        Answer(title: "Premise Flowable"),
                        Answer(title: "S-Flow"),
                        Answer(title: "SRD"),
                        Answer(title: "Revolution"),
                        Answer(title: "Estelite Flow Quick"),
                        Answer(title: "Herculite Ultra Flow"),
                        Answer(title: "Другое")
                    ]
            ),
            Question(
                title: "Какой цемент Вы используете в работе?",
                answers:
                    [
                        Answer(title: "Maxcem Elite"),
                        Answer(title: "Fuji I"),
                        Answer(title: "Estecem"),
                        Answer(title: "Fuji Plus"),
                        Answer(title: "NX3"),
                        Answer(title: "Ionotite F"),
                        Answer(title: "Total Cem"),
                        Answer(title: "Variolink")
                    ]
            ),
            Question(
                title: "Что из представленных полировальных систем Вы используете чаще?",
                answers:
                    [
                        Answer(title: "Sof-Lex"),
                        Answer(title: "Opti1step"),
                        Answer(title: "Enchance"),
                        Answer(title: "Occlubrush"),
                        Answer(title: "Kagayaki"),
                        Answer(title: "Optidisc"),
                        Answer(title: "Meissinger"),
                        Answer(title: "ТОР ВМ")
                    ]
            ),
        ]
    }
}

struct Answer {
    let title: String
}
