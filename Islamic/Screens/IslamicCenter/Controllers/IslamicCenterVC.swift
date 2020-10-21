//
//  IslamicCenterVC.swift
//  Islamic
//
//  Created by Aya on 10/16/20.
//  Copyright © 2020 Aya. All rights reserved.
//

import UIKit

class IslamicCenterVC: UIViewController {
   
    
    
    let searchController = UISearchController()
    @IBOutlet weak var tableView: UITableView!{
        didSet{
            tableView.delegate = self
            tableView.dataSource = self
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        title = "Islamic Center"
        configureSearchController()
        
    }
    
    
    
    
    func configureSearchController() {
    
        searchController.searchResultsUpdater                 = self
        searchController.searchBar.delegate                   = self
        searchController.searchBar.placeholder                = "Search for Islamic Centers"
        searchController.obscuresBackgroundDuringPresentation = false
        searchController.searchBar.layer.borderWidth = 1
        searchController.searchBar.layer.borderColor = UIColor.white.cgColor
        self.tableView.tableHeaderView = searchController.searchBar
        //   let frame = CGRect(x: 0, y: 0, width: 100, height: 50)
        //   searchController.searchBar.frame = frame
    
    }

}


    


