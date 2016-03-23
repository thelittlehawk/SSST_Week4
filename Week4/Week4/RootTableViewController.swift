//
//  File.swift
//  Week4
//
//  Created by Faik Catibusic on 3/23/16.
//  Copyright © 2016 SSST. All rights reserved.
//

import Foundation
import UIKit

class RootTableViewController: UITableViewController {
    
    @IBOutlet weak var fLabel: UILabel!
    
    @IBOutlet weak var sLable: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        fLabel.text = "Hello world 1."
        sLable.text = "Hello world 2."
    }
    
    override func tableView(tableView: UITableView, didSelectRowAtIndexPath indexPath: NSIndexPath) {
        print("Section: " + String(indexPath.section))
        print("Row    : " + String(indexPath.row))
        self.performSegueWithIdentifier("transition", sender: self)
    }
    
}