//
//  main.swift
//  Week4-WedPractice
//
//  Created by Song on 2020/11/25.
//

import Foundation

let fileSystemExplorer = FileSystemExplorer()

print(fileSystemExplorer.files(at: "/Users/song/development/swift/masters-cocoa"))
print(fileSystemExplorer.isExist(filename: "HangulClock", at: "/Users/song/development/swift/masters-cocoa"))

