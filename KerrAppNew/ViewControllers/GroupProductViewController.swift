//
//  GroupProuctViewController.swift
//  KerrAppNew
//
//  Created by Александр Соболев on 21.01.2024.
//

import UIKit

class GroupProductViewController: UITableViewController {
    
    private var group = Product.getProduct()

    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.rowHeight = 80
    }

    // MARK: - Table view data source

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        group.count
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "groupID", for: indexPath)
        var content = cell.defaultContentConfiguration()
        let group = group[indexPath.row]
        
        content.text = group.nameOfGroup
        
        cell.contentConfiguration = content
        return cell
    }

     // MARK: - Navigation
     override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
         guard let productVC = segue.destination as? ProductListViewController else { return }
         guard let indexPath = tableView.indexPathForSelectedRow else { return }
         let product = group[indexPath.row]
         productVC.product = product
     }
    
}
