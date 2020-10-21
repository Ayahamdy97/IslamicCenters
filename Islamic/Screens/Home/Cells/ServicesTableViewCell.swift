//
//  ServicesTableViewCell.swift
//  Islamic
//
//  Created by Aya on 10/19/20.
//  Copyright © 2020 Aya. All rights reserved.
//

import UIKit

class ServicesTableViewCell: UITableViewCell {

    @IBOutlet weak var servicesCollectionView: UICollectionView!
    override func awakeFromNib() {
        super.awakeFromNib()
        servicesCollectionView.delegate   = self
        servicesCollectionView.dataSource = self
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        
    }

}


extension ServicesTableViewCell : UICollectionViewDelegate , UICollectionViewDataSource{
func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
    5
}

func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
    let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "servicesCollectionCell", for: indexPath)
    
    
    return  cell
    }
}
