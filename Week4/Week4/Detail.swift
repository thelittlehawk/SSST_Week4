//
//  Detail.swift
//  Week4
//
//  Created by Faik Catibusic on 3/23/16.
//  Copyright © 2016 SSST. All rights reserved.
//

import Foundation
import UIKit

class DetailViewController: UIViewController {
    
    var textString:String = ""
    
    @IBOutlet weak var textLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        textLabel.text = textString
    }
    
}