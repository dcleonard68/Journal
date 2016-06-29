//
//  EntryController.swift
//  Journal
//
//  Created by Ryan Plitt on 6/29/16.
//  Copyright © 2016 DevMountain. All rights reserved.
//

import Foundation



class EntryController {
    
    let sharedController: EntryController = EntryController()
    
    var entries: [Entry] = []
    
    func addEntry(entry: Entry) {
    entries.append(entry)
    }
    
    func removeEntry(entry: Entry) {
        guard let index = entries.indexOf(entry) else {
            return
        }
        entries.removeAtIndex(index)
    }
}