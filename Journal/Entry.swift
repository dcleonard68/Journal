//
//  Entry.swift
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
class Entry: Equatable {
    
    private let timestampKey = "timestamp"
    private let titleKey = "title"
    private let textKey = "text"
    
    var timestamp: NSDate
    var title: String
    var text: String
    
    init(timestamp: NSDate = NSDate(), title: String, text: String) {
        
        self.timestamp = timestamp
        self.title = title
        self.text = text
    }
    
    init?(dictionary: Dictionary<String, AnyObject>) {
        guard let timestamp = dictionary[timestampKey] as? NSDate,
            let title = dictionary[titleKey] as? String,
            let text = dictionary[textKey] as? String else {
                
                // sets values for stored properties due to requirement as of Swift 2.0
                self.timestamp = NSDate()
                self.title = ""
                self.text = ""

                return nil
        }
        
        self.timestamp = timestamp
        self.title = title
        self.text = text

    }
    
    func dictionaryCopy() -> Dictionary<String, AnyObject> {
        
        let dictionary = [
            timestampKey : self.timestamp,
            titleKey : self.title,
            textKey : self.text
        ]
        
        return dictionary
    }
    
}

func == (lhs: Entry, rhs: Entry) -> Bool {
    return ObjectIdentifier(lhs) == ObjectIdentifier(rhs)
}
=======
class Entry: Equatable, NSCoding {
    var timestamp: NSDate
    var title: String
    var bodyText: String
    
    init(timestamp: NSDate, title: String, bodyText: String){
        self.timestamp = NSDate()
        self.title = title
        self.bodyText = bodyText
    }
    
    @objc func encodeWithCoder(aCoder: NSCoder) {
        
    }
    @objc required init?(coder aDecoder: NSCoder) {
        
    }
    
    
    
    
}

func ==(lhs: Entry, rhs: Entry) -> Bool {
    return lhs.timestamp == rhs.timestamp && lhs.bodyText == rhs.bodyText && lhs.title == rhs.title
}
>>>>>>> a7e193f8844fa7f0dbdbdea9b46b0917271586fd
