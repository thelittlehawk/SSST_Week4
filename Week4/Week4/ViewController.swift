//
//  ViewController.swift
//  Week4
//
//  Created by Faik Catibusic on 3/22/16.
//  Copyright © 2016 SSST. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func buttonClicked(sender: AnyObject) {
        print("Button clicked!")
        self.performSegueWithIdentifier("transition", sender: self)
    }
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        if(segue.identifier == "transition") {
            print("prepareForSegue called")
            let vc : UIViewController = segue.destinationViewController
        }
    }
    
    override func shouldPerformSegueWithIdentifier(identifier: String, sender: AnyObject?) -> Bool {
        print("shouldPerformSegueWithIdentifier called")
        if(!identifier.isEmpty && identifier == "transition")
        {
            return true
        }
        return false
    }

}

