//
//  ViewController.swift
//  FileSystemExplorer
//
//  Created by Song on 2020/11/24.
//

import UIKit

class ViewController: UIViewController {

    let fileManager = FileManager.default
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        displayAllFiles(at: "/Users/song/development/swift/masters-cocoa")
    }

    func displayAllFiles(at path: String) {
        do {
            let fileNames = try fileManager.contentsOfDirectory(atPath: path)
            print(fileNames)
        } catch {
            print(error)
        }
        
    }

}

