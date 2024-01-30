//
//  User.swift
//  KerrAppNew
//
//  Created by Александр Соболев on 07.01.2024.
//

struct User {
    let login: String
    let password: String
    let subject: Subject
    
    static func getUserData() -> User {
        User(
            login: "User",
            password: "Password",
            subject: Subject.getSubject()
        )
    }
}

struct Subject {
    let name: String
    let surname: String
    let userImage: String
    let bornDate: String
    let cellPhone: String
    let email: String
    
    var fullName: String {
        "ФИО: \(name) \(surname)"
    }
    
    static func getSubject() -> Subject {
        Subject(
            name: "Александр",
            surname: "Соболев",
            userImage: "AlexPH",
            bornDate: "Дата рождения: 08.07.1988",
            cellPhone: "Телефон: 89610297502",
            email: "Почта: 31108@mail.ru"
        )
    }
}
