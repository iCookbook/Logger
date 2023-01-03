//
//  ViewController.swift
//  Logger
//
//  Created by htmlprogrammist on 12/03/2022.
//  Copyright (c) 2022 htmlprogrammist. All rights reserved.
//

import UIKit
import Logger

class ViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        Logger.log("Method `viewDidLoad` was called on 17th line", logType: .info)
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        
        Logger.log("We received memory warning", logType: .warning)
    }
}
