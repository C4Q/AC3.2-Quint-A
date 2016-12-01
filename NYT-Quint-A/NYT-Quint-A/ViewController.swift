//
//  ViewController.swift
//  NYT-Quint-A
//
//  Created by Kadell on 12/1/16.
//  Copyright © 2016 Kadell. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        TestCocoapod.makeRequest()
    
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

