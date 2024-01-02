//
//  Person.swift
//  KerrAppNew
//
//  Created by Александр Соболев on 02.01.2024.
//

struct Person {
    let name: String
    let surname: String
    let post: String
    
    var fullName: String {
        "\(name) \(surname)"
    }
    
    static func getPerson() -> [Person] {
        [
        Person(name: "Роман", surname: "Григорьев", post: "Руководитель отдела продаж РФ"),
        Person(name: "Александр", surname: "Соболев", post: "Руководитель отдела продаж ЦФО"),
        Person(name: "Артем", surname: "Дубровский", post: "Менеджер по работе с ключевыми клиентами ЦФО"),
        Person(name: "Татьяна", surname: "Столетова", post: "Региональный торговый представитель ЦФО"),
        Person(name: "Дарья", surname: "Бокачева", post: "Региональный торговый представитель ЦФО"),
        Person(name: "Юлия", surname: "Степанова", post: "Региональный торговый представитель ЦФО"),
        Person(name: "Илья ", surname: "Ульянов", post: "Региональный торговый представитель ЦФО"),
        ]
    }
}
