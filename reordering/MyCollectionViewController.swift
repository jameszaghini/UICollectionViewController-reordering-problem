//
//  MyCollectionViewController.swift
//  reordering
//
//  Created by James Zaghini on 3/02/2016.
//  Copyright © 2016 James Zaghini. All rights reserved.
//

import UIKit

private let reuseIdentifier = "Cell"

class MyCell: UICollectionViewCell {
    @IBOutlet var label: UILabel?
}

class MyCollectionViewController: UICollectionViewController {

    var items = [1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        collectionView?.reloadData()
    }

    // MARK: UICollectionViewDataSource

    override func numberOfSectionsInCollectionView(collectionView: UICollectionView) -> Int {
        return 1
    }

    override func collectionView(collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return items.count
    }

    override func collectionView(collectionView: UICollectionView, cellForItemAtIndexPath indexPath: NSIndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCellWithReuseIdentifier(reuseIdentifier, forIndexPath: indexPath)
        
        if let cell = cell as? MyCell {
            cell.label?.text = String(items[indexPath.row])
        }
        
        return cell
    }
    
    override func collectionView(collectionView: UICollectionView, moveItemAtIndexPath sourceIndexPath: NSIndexPath, toIndexPath destinationIndexPath: NSIndexPath) {
        
    }
}
