//
//  EntryController.swift
//  Journal
//
<<<<<<< HEAD
//  Created by Caleb Hicks on 10/1/15.
//  Copyright © 2015 DevMountain. All rights reserved.
=======
//  Created by Ryan Plitt on 6/29/16.
//  Copyright © 2016 DevMountain. All rights reserved.
>>>>>>> a7e193f8844fa7f0dbdbdea9b46b0917271586fd
//

import Foundation

<<<<<<< HEAD
class EntryController {
    
    private let entriesKey = "entries"
    
    static let sharedController = EntryController()
    
    var entries: [Entry]
    
    init() {
        
        self.entries = []
        
        self.loadFromPersistentStorage()
    }
    
    func addEntry(entry: Entry) {
        
        entries.append(entry)
        
        self.saveToPersistentStorage()
    }
    
    func removeEntry(entry: Entry) {
        
        if let entryIndex = entries.indexOf(entry) {
            entries.removeAtIndex(entryIndex)
        }
        
        self.saveToPersistentStorage()
    }
    
    func loadFromPersistentStorage() {
        
        let entryDictionariesFromDefaults = NSUserDefaults.standardUserDefaults().objectForKey(entriesKey) as? [Dictionary<String, AnyObject>]

        if let entryDictionaries = entryDictionariesFromDefaults {
        
            self.entries = entryDictionaries.map({Entry(dictionary: $0)!})
        }
    }
    
    func saveToPersistentStorage() {
        
        let entryDictionaries = self.entries.map({$0.dictionaryCopy()})
        
        NSUserDefaults.standardUserDefaults().setObject(entryDictionaries, forKey: entriesKey)
    }
    
=======


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
>>>>>>> a7e193f8844fa7f0dbdbdea9b46b0917271586fd
}