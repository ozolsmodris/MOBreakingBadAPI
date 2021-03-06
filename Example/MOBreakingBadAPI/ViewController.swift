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
    
    var apiController = MOBreakingBadAPI()
    
    override func viewWillAppear(_ animated: Bool) {
        
        apiController.getRandomQuote { (quote) in
            print("Quote from random character \(quote!)")
        }
        
        apiController.getQuote(from: "Walter White") { (quote) in
            print("Quote from Walter White \(quote!)")
        }
        apiController.getAllCharacters { (characters) in
            print("All characters from Braking Bad \(characters)")
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
}
