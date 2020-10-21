//
//  IslamicCenterTVCell.swift
//  Islamic
//
//  Created by Aya on 10/16/20.
//  Copyright © 2020 Aya. All rights reserved.
//

import UIKit

class IslamicCenterTVCell: UITableViewCell {
    @IBOutlet weak var islamicCenterImageview: UIImageView!
    @IBOutlet weak var idlamicCenterName: UILabel!
    @IBOutlet weak var islamicCenterCountry: UILabel!
    
    @IBOutlet weak var islamicCenterDistance: UILabel!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

       // islamicCenterImageview.layer.cornerRadius = 10
        // Configure the view for the selected state
    }

}
