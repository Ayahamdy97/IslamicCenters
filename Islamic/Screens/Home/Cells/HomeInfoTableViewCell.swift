//
//  HomeInfoTableViewCell.swift
//  Islamic
//
//  Created by Aya on 10/19/20.
//  Copyright © 2020 Aya. All rights reserved.
//

import UIKit

class HomeInfoTableViewCell: UITableViewCell {
    @IBOutlet weak var homeInfoCollectionView: UICollectionView!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        homeInfoCollectionView.delegate   = self
        homeInfoCollectionView.dataSource = self
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
extension HomeInfoTableViewCell : UICollectionViewDelegate , UICollectionViewDataSource{
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        5
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "homeInfoCollectionViewCell", for: indexPath)
        return cell
    }
    
    
}
