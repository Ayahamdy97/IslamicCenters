//
//  IslamicCenterVC+SearchDelegate.swift
//  Islamic
//
//  Created by Aya on 10/18/20.
//  Copyright © 2020 Aya. All rights reserved.
//

import UIKit
extension IslamicCenterVC : UISearchResultsUpdating, UISearchBarDelegate{
    func updateSearchResults(for searchController: UISearchController) {
        print("clicked")

    }
    
    func searchBarCancelButtonClicked(_ searchBar: UISearchBar) {
        print("clicked")
        
    }
}
