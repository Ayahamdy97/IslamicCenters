//
//  IslamicCenterVC+TableViewDelegate.swift
//  Islamic
//
//  Created by Aya on 10/18/20.
//  Copyright © 2020 Aya. All rights reserved.
//

import UIKit
extension IslamicCenterVC : UITableViewDelegate , UITableViewDataSource{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        5
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "IslamicCenterTVCell", for: indexPath) as! IslamicCenterTVCell
        return cell
    }
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
        let storyboard = UIStoryboard(name:"IslamicCenterInfo", bundle: nil)
        let IslamicCenterInfoTVC = storyboard.instantiateViewController(identifier: "IslamicCenterInfoTVC") as! IslamicCenterInfoTVC
                 
               navigationController?.pushViewController(IslamicCenterInfoTVC, animated: true)
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        235
    }
}
