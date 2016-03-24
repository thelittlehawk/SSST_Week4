//
//  DynamicTable.swift
//  Week4
//
//  Created by Faik Catibusic on 3/23/16.
//  Copyright © 2016 SSST. All rights reserved.
//

import Foundation
import UIKit

class DynamicTable: UITableViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    override func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        return 1
    }
    
    override func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 10
    }
    
    override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        if(indexPath.row % 2 == 0) {
            let cell:UITableViewCell = tableView.dequeueReusableCellWithIdentifier("Sample")!
            cell.textLabel!.text = "Sample"
            return cell
        }
        let cell:UITableViewCell = tableView.dequeueReusableCellWithIdentifier("NotSample")!
        cell.textLabel!.text = "NotSample"
        return cell
    }
    
    override func tableView(tableView: UITableView, didSelectRowAtIndexPath indexPath: NSIndexPath) {
        self.performSegueWithIdentifier("dynamicTransition", sender: self)
    }
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        let controller:DetailViewController = segue.destinationViewController as! DetailViewController
        
        controller.textString = "Test 1234"
    }
}