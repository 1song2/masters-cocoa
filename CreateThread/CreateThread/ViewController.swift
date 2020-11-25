//
//  ViewController.swift
//  CreateThread
//
//  Created by Song on 2020/11/24.
//

import UIKit

class ViewController: UIViewController {
    
    let some = BackgroundWork()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        some.doTimeConsumingOperation(operation: nil)
    }
}

