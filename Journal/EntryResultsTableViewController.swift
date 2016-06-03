//
//  EntryResultsTableViewController.swift
//  Journal
//
//  Created by Caleb Hicks on 11/3/15.
//  Copyright © 2015 DevMountain. All rights reserved.
//

import UIKit

class EntryResultsTableViewController: UITableViewController {
    
    var titleResults = [Entry]()
    var textResults = [Entry]()
    
    
    // MARK: - Internal API
    
    func update(with searchTerm: String?) {
        guard var searchTerm = searchTerm else { return }
        searchTerm = searchTerm.lowercaseString
        titleResults = EntryController.sharedController.entries.filter { $0.title.lowercaseString.containsString(searchTerm) }
        textResults = EntryController.sharedController.entries.filter { $0.text.lowercaseString.containsString(searchTerm) }
        tableView.reloadData()
    }
    
    func getEntry(at indexPath: NSIndexPath) -> Entry {
        return indexPath.section == 0 ? titleResults[indexPath.row] : textResults[indexPath.row]
    }

    // MARK: - Table view data source
    
    override func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        return 2
    }

    override func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return section == 0 ? titleResults.count : textResults.count
    }

    override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCellWithIdentifier("resultCell", forIndexPath: indexPath)
        
        let entry = getEntry(at: indexPath)

        cell.textLabel?.text = entry.title

        return cell
    }
    
    override func tableView(tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        return section == 0 ? "Title Results" : "Text Results"
    }
    
    override func tableView(tableView: UITableView, didSelectRowAtIndexPath indexPath: NSIndexPath) {
        
        let cell = tableView.cellForRowAtIndexPath(indexPath)
        
        self.presentingViewController?.performSegueWithIdentifier("toShowEntry", sender: cell)
    }


}
