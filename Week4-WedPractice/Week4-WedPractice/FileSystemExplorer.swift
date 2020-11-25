//
//  FileSystemExplorer.swift
//  Week4-WedPractice
//
//  Created by Song on 2020/11/25.
//

import Foundation

struct FileSystemExplorer {
    let fileManager = FileManager()
    
    func files(at path: String) -> Array<String> {
        do {
            let result = try fileManager.contentsOfDirectory(atPath: path)
            return result
        } catch {
            print(error.localizedDescription)
            return Array<String>()
        }
    }
    
    func isExist(filename: String, at path: String) -> Bool {
        return files(at: path).contains(filename)
    }
}
