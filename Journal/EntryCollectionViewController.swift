//
//  EntryCollectionViewController.swift
//  Journal
//
//  Created by Ben Norris on 11/20/15.
//  Copyright © 2015 DevMountain. All rights reserved.
//

import UIKit


class EntryCollectionViewController: UICollectionViewController {
    
    // MARK: - IB properties

    @IBOutlet var dataSource: EntryCollectionViewDataSource!
    
    
    // MARK: - Lifecycle overrides
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        dataSource.cellDelegate = self
    }
    
}

    
// MARK: - Entry Cell Delegate

extension EntryCollectionViewController: EntryCellDelegate {
    
    func toggleEditing() {
        editing = !editing
        dataSource.editing = editing
        collectionView?.reloadData()
    }
    
    func deleteEntry(cell: EntryCell) {
        guard let indexPath = collectionView?.indexPathForCell(cell) else { preconditionFailure() }
        let entry = EntryController.sharedController.entries[indexPath.item]
        EntryController.sharedController.removeEntry(entry)
        collectionView?.deleteItemsAtIndexPaths([indexPath])
    }

}
