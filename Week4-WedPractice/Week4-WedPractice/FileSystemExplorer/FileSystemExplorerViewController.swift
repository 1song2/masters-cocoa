//
//  FileSystemExplorerViewController.swift
//  Week4-WedPractice
//
//  Created by Song on 2020/11/25.
//

import UIKit

class FileSystemExplorerViewController: UIViewController {

    @IBOutlet weak var filepathTextField: UITextField!
    @IBOutlet weak var filenameTextField: UITextField!
    @IBOutlet weak var fileTypeTextField: UITextField!
    @IBOutlet weak var displayTextView: UITextView!
    
    let fileSystemExplorer = FileSystemExplorer()
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    @IBAction func showFileListButtonPressed(_ sender: UIButton) {
        if let filepath = filepathTextField.text {
            displayTextView.text = fileSystemExplorer.files(at: filepath).joined(separator: "\n")
        }
    }
    
    @IBAction func checkFileButtonPressed(_ sender: UIButton) {
        if let filepath = filepathTextField.text, let filename = filenameTextField.text {
            if filename.contains(" ") {
                let multipleFiles = filename.components(separatedBy: " ")
                displayTextView.text = multipleFiles
                    .map { ($0, fileSystemExplorer.isExist(filename: $0, at: filepath)) }
                    .map { $0.1 ? "\($0.0)이/가 경로에 존재합니다." : "\($0.0)이/가 경로에 존재하지 않습니다." }
                    .joined(separator: "\n")
            } else {
                displayTextView.text = fileSystemExplorer.isExist(filename: filename, at: filepath) ? "\(filename)이/가 경로에 존재합니다." : "\(filename)이/가 경로에 존재하지 않습니다."
            }
        }
    }
    
    @IBAction func searchFileByTypeButtonPressed(_ sender: UIButton) {
        if let filePath = filepathTextField.text, let fileType = fileTypeTextField.text {
            displayTextView.text = fileSystemExplorer.files(at: filePath).filter { $0.components(separatedBy: ".").last == fileType }.joined(separator: "\n")
        }
    }
}
