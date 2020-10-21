//
//  NewsVC.swift
//  Islamic
//
//  Created by Aya on 10/21/20.
//  Copyright © 2020 Aya. All rights reserved.
//

import UIKit

class NewsVC: UIViewController {

    @IBOutlet weak var imageView: UIImageView!
    @IBOutlet weak var dateLabel: UILabel!
    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var contentLabel: UILabel!
    @IBOutlet weak var summaryLabel: UILabel!
    @IBOutlet weak var viewHeight: NSLayoutConstraint!
    override func viewDidLoad() {
        super.viewDidLoad()

       
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        print(contentLabel.frame.height)
    }

}
