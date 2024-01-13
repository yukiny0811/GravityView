//
//  ViewController.swift
//  Example
//
//  Created by Yuki Kuwashima on 2024/01/13.
//

import UIKit
import GravityView

class ViewController: UIViewController {
    
    let manager = GravityManager()
    
    @IBOutlet var button: UIButton!

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        manager.initialize([button], ref: self.view)
        
    }


}

