//
//  CompanyInfoViewController.swift
//  KerrAppNew
//
//  Created by Александр Соболев on 07.01.2024.
//

import UIKit

class CompanyInfoViewController: UIViewController {
    
    private let infoCompany = CompanyInformation.getCompanyInfo()
    
    
    @IBOutlet weak var titleAboutCompany: UILabel!
    @IBOutlet weak var aboutCompany: UILabel!
    @IBOutlet weak var titleHistory: UILabel!
    @IBOutlet weak var companyHistory: UILabel!
    @IBOutlet weak var titleHeadquarters: UILabel!
    @IBOutlet weak var headquarters: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        titleAboutCompany.text = infoCompany.titleAboutCompany
        aboutCompany.text = infoCompany.companyInfo
        titleHistory.text = infoCompany.titleHistory
        companyHistory.text = infoCompany.history
        titleHeadquarters.text = infoCompany.titleHeadquarters
        headquarters.text = infoCompany.headquarters

    }
    

  

}
