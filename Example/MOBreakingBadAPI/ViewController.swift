//
//  ViewController.swift
//  MOBreakingBadAPI
//
//  Created by Modris Ozols on 01/16/2020.
//  Copyright (c) 2020 Modris Ozols. All rights reserved.
//

import UIKit
import MOBreakingBadAPI

class ViewController: UIViewController {

    @IBOutlet weak var example_label: UILabel!
    var apiController = MOBreakingBadAPI()
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

}

