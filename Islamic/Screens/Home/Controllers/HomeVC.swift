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
    

    
    @IBAction func seeAllPressed(_ sender: Any) {
        let storyboard = UIStoryboard(name:"IslamicCenter", bundle: nil)
                    let islamicCenterVC = storyboard.instantiateViewController(identifier: "IslamicCenterVC") as! IslamicCenterVC
                  //  IslamicCenterVC.modalPresentationStyle = .fullScreen
                    //self.present(IslamicCenterVC , animated: true)
               navigationController?.pushViewController(islamicCenterVC, animated: true)
    }
    
}


extension HomeVC :UITableViewDelegate, UITableViewDataSource{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        5
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        switch indexPath.row {
        case 0:
           let welcomeCell = tableView.dequeueReusableCell(withIdentifier: "welcomeCell", for: indexPath)
           return welcomeCell
        case 1:
            let servicesCell = tableView.dequeueReusableCell(withIdentifier: "ServicesTableViewCell", for: indexPath) as! ServicesTableViewCell
            return servicesCell
            
        case 2:
            let homeInfoCell = tableView.dequeueReusableCell(withIdentifier: "HomeInfoTableViewCell", for: indexPath) as! HomeInfoTableViewCell
            return homeInfoCell
            
        case 3:
        let homeInfoCell = tableView.dequeueReusableCell(withIdentifier: "HomeInfoTableViewCell", for: indexPath) as! HomeInfoTableViewCell
        return homeInfoCell
        case 4:
        let homeInfoCell = tableView.dequeueReusableCell(withIdentifier: "HomeInfoTableViewCell", for: indexPath) as! HomeInfoTableViewCell
        return homeInfoCell
        default:
            return UITableViewCell()
        }
      
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        switch indexPath.row {
        case 0:
           return 165
        case 1:
            return 125
        case 2:
            return 280
        case 3:
            return 280
        case 4:
        return 280
        default:
            return 0
        }
        
        
        
    }
    
}
