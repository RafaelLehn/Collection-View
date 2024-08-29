//
//  MainCollectionViewCell.swift
//  Collection View 1
//
//  Created by Evolua Tech on 27/08/24.
//

import UIKit

class MainCollectionViewCell: UICollectionViewCell {
    @IBOutlet var nameLabel: UILabel!
    
    func setupCell(name: String) {
        nameLabel.text = name
    }
    
}
