//
//  ViewController.swift
//  BitcodeApplication
//
//  Created by Igor Fereira on 04/08/2016.
//  Copyright © 2016 Igor Fereira. All rights reserved.
//

import UIKit
import BitcodeLibrary

class ViewController: UIViewController {

    let printer = Printer()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        printer.printMessage("View Did Load", aligment: .Right)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

