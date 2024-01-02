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
    let cellPhone: String
    let email: String
    
    var fullName: String {
        "\(name) \(surname)"
    }
    
    static func getPerson() -> [Person] {
        [
        Person(name: "Роман", surname: "Григорьев", post: "Руководитель отдела продаж Kerr РФ", cellPhone: "☎️ +7 (925) 007 01 25", email: "📨 roman.grigoriev@envistaco.com"),
        Person(name: "Александр", surname: "Соболев", post: "Руководитель отдела продаж в Москве и ЦФО", cellPhone: "☎️ +7 (926) 780 60 28", email: "📨 aleksander.sobolev@envistaco.com"),
        Person(name: "Артем", surname: "Дубровский", post: "Менеджер по работе с ключевыми клиентами ЦФО", cellPhone: "☎️ +7 (926) 900 43 19", email: "📨 artem.dubrovskiy@envistaco.com"),
        Person(name: "Татьяна", surname: "Столетова", post: "Региональный торговый представитель ЦФО", cellPhone: "☎️ +7 (925) 517 58 28", email: "📨 tatiana.stoletova@envistaco.com"),
        Person(name: "Дарья", surname: "Бокачева", post: "Региональный торговый представитель ЦФО", cellPhone: "☎️ +7 (926) 013 00 86", email: "📨 daria.bokacheva@envistaco.com"),
        Person(name: "Юлия", surname: "Степанова", post: "Региональный торговый представитель ЦФО", cellPhone: "☎️ +7 (929) 698 98 90", email: "📨 yulia.stepanova@envistaco.com"),
        Person(name: "Илья", surname: "Ульянов", post: "Региональный торговый представитель ЦФО", cellPhone: "☎️ +7 (929) 585 05 02", email: "📨 ilya.uljyanov@envistaco.com"),
        ]
    }
}
