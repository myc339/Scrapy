//
//  CustomTableViewCell.swift
//  SalesCollector
//
//  Created by 陈雨梦 on 2020/4/20.
//  Copyright © 2020 northeastern. All rights reserved.
//

import UIKit
class customCollectionCell:UICollectionViewCell{
    @IBOutlet weak var ItemImage: UIImageView!
    @IBOutlet weak var PriceTag: UILabel!
    @IBOutlet weak var ItemTag: UILabel!
    
    @IBOutlet weak var SalesStoryTag: UILabel!
}
class MyCustomCollectionView: UICollectionView {
    var parentTableViewIndexPath: IndexPath?
}

class CustomTableViewCell: UITableViewCell {

    @IBOutlet weak var StoreTag: UILabel!
    @IBOutlet weak var collectionView: MyCustomCollectionView!
    override func awakeFromNib() {
        super.awakeFromNib()
//        collectionView.delegate = self
//        collectionView.dataSource = self
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
    func setCollectionViewDataSourceDelegate(dataSourceDelegate: UICollectionViewDataSource & UICollectionViewDelegate, forRow row: Int) {
        collectionView.delegate = dataSourceDelegate
        collectionView.dataSource = dataSourceDelegate
        collectionView.tag = row
        self.collectionView.reloadItems(at: self.collectionView.indexPathsForVisibleItems)

    }
    

    
    
}

