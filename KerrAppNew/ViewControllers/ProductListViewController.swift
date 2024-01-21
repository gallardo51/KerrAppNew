//
//  ProductListViewController.swift
//  KerrAppNew
//
//  Created by Александр Соболев on 07.01.2024.
//

import UIKit

class ProductListViewController: UITableViewController {
    
    var product: Product!
    private var element = Product.getProduct()
    private var item: [Item] = []
    private var currentItem: [Item] {
        element[itemIndex].item
    }
    private var itemIndex = 0
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.rowHeight = 80
        
    }
    
    // MARK: - Table view data source
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        currentItem.count
    }
    
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "productID", for: indexPath)
        var content = cell.defaultContentConfiguration()
        let item = currentItem[indexPath.row]
        content.text = item.name
        
        cell.contentConfiguration = content
        
        return cell
    }
    
    // MARK: - Navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let productInfoVC = segue.destination as? ProductInfoViewController else { return }
        guard let indexPath = tableView.indexPathForSelectedRow else { return }
        let item = currentItem[indexPath.row]
        productInfoVC.item = item
    }
}
