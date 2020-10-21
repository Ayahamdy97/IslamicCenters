//
//  HomeTWoVC.swift
//  Islamic
//
//  Created by Aya on 10/19/20.
//  Copyright © 2020 Aya. All rights reserved.
//

import UIKit

class HomeVC: UIViewController {
    
    @IBOutlet weak var homeTableView: UITableView!
    override func viewDidLoad() {
        super.viewDidLoad()
        
        homeTableView.delegate   = self
        homeTableView.dataSource = self
    }
    /*
     @IBAction func btnPressed(_ sender: Any) {
     let storyboard = UIStoryboard(name:"News", bundle: nil)
     let newsVC = storyboard.instantiateViewController(identifier: "NewsVC") as! NewsVC
     //  IslamicCenterVC.modalPresentationStyle = .fullScreen
     //self.present(IslamicCenterVC , animated: true)
     navigationController?.pushViewController(newsVC, animated: true)
     }*/
    
    
    
    @IBAction func seeAllPressed(_ sender: Any) {
        
        
        let storyboard = UIStoryboard(name:"IslamicCenter", bundle: nil)
        let islamicCenterVC = storyboard.instantiateViewController(identifier: "IslamicCenterVC") as! IslamicCenterVC
        navigationController?.pushViewController(islamicCenterVC, animated: true)
    }
    
}

