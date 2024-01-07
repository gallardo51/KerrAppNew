//
//  Product.swift
//  KerrAppNew
//
//  Created by Александр Соболев on 07.01.2024.
//

struct Product {
    let type: ResponseType
    let item: [Item]
    
    static func getProduct() -> [Product] {
        [
            Product(
                type: .adhesive,
                item: [
                    Item(name: "Optibond FL", description: "Адгезив 4-го поколоения"),
                    Item(name: "Optibond Solo Plus", description: "Адгезив 5-го поколения"),
                    Item(name: "Optibond Universal", description: "Адгезив 8-го поколения")
                ]
            ),
            Product(
                type: .composite,
                item: [
                    Item(name: "Optibond FL", description: "Адгезив 4-го поколоения"),
                    Item(name: "Optibond Solo Plus", description: "Адгезив 5-го поколения"),
                    Item(name: "Optibond Universal", description: "Адгезив 8-го поколения")
                ]
            )
        ]
    }
}

struct Item {
    let name: String
    let description: String
}

enum ResponseType {
    case adhesive
    case composite
    case cement
    case polishing
}



