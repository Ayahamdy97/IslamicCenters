//
//  ViewController.swift
//  Islamic
//
//  Created by Aya on 10/16/20.
//  Copyright © 2020 Aya. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
    }

    @IBAction func btnPressed(_ sender: Any) {
        
        let storyboard = UIStoryboard(name:"IslamicCenter", bundle: nil)
             let islamicCenterVC = storyboard.instantiateViewController(identifier: "IslamicCenterVC") as! IslamicCenterVC
           //  IslamicCenterVC.modalPresentationStyle = .fullScreen
             //self.present(IslamicCenterVC , animated: true)
        navigationController?.pushViewController(islamicCenterVC, animated: true)
    }
    
}

