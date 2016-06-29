//
//  Entry.swift
//  Journal
//
//  Created by Ryan Plitt on 6/29/16.
//  Copyright © 2016 DevMountain. All rights reserved.
//

import Foundation

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
