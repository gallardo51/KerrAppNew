//
//  PersonListViewController.swift
//  KerrAppNew
//
//  Created by Александр Соболев on 02.01.2024.
//

import UIKit

class PersonListViewController: UITableViewController {
    
    private var personList = Person.getPerson()
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    // MARK: - Table view data source
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        personList.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "personID", for: indexPath)
        var content = cell.defaultContentConfiguration()
        let person = personList[indexPath.row]
        
        content.text = person.fullName
        content.secondaryText = person.post
        
        cell.contentConfiguration = content
        return cell
        
        
        // MARK: - Navigation
        func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        }
        
    }
}
