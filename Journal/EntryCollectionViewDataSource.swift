//
//  EntryCollectionViewDataSource.swift
//  Journal
//
//  Created by Ben Norris on 6/2/16.
//  Copyright © 2016 DevMountain. All rights reserved.
//

import UIKit

class EntryCollectionViewDataSource: NSObject {
    
    // MARK: - Internal properties
    
    var cellDelegate: EntryCellDelegate?
    var editing = false
    
}


// MARK: - Collection view data source

extension EntryCollectionViewDataSource: UICollectionViewDataSource {
    
    func collectionView(collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return EntryController.sharedController.entries.count
    }
    
    func collectionView(collectionView: UICollectionView, cellForItemAtIndexPath indexPath: NSIndexPath) -> UICollectionViewCell {
        guard let cell = collectionView.dequeueReusableCellWithReuseIdentifier(EntryCell.reuseIdentifier, forIndexPath: indexPath) as? EntryCell else { preconditionFailure() }
        let entry = EntryController.sharedController.entries[indexPath.item]
        cell.delegate = cellDelegate
        cell.editing = editing
        cell.update(entry)
        
        return cell
    }

}
