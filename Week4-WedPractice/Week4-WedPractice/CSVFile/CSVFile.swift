//
//  CSVFile.swift
//  Week4-WedPractice
//
//  Created by Song on 2020/11/25.
//

import Foundation

class CSVFile {
    var filename: String
    var fileContents = Array<Dictionary<String, Any>>()
    
    init(file: String) {
        self.filename = file
        
        guard let filepath = Bundle.main.path(forResource: filename, ofType: "csv") else {
            return
        }
        
        var contents = ""
        do {
            contents = try String(contentsOfFile: filepath)
        } catch {
            print(error.localizedDescription)
            return
        }
        
        var rows  = contents.components(separatedBy: "\n")
        rows.removeFirst()
        
        for row in rows {
            let columns = row.components(separatedBy: ",")
            let name = columns[0]
            let email = columns[1]
            let language = columns[2]
            if let grade = Int(columns[3].replacingOccurrences(of: "\r", with: "")) {
                let item: [String : Any] = ["name" : name, "email" : email, "language" : language, "grade" : grade]
                fileContents.append(item)
            }
        }
    }
    
//FIXME: - 기능 구현 아직 안됨 (여러가지로 시도중!)
    func add(name: String, email: String, language: String, grade: Int) {
        //let newItem: [String : Any] = ["name" : name, "email" : email, "language" : language, "grade" : grade]
        let newItem = "\n\(name),\(email),\(language),\(grade)"
        guard let filepath = Bundle.main.path(forResource: filename, ofType: "csv") else {
            print("There's no file")
            return
        }
        
        if FileManager.default.fileExists(atPath: filepath) {
            if let fileHandle = FileHandle(forWritingAtPath: filepath) {
                fileHandle.seekToEndOfFile()
                fileHandle.write(newItem.data(using: .utf8)!)
                fileHandle.closeFile()
            }
        }
        
        //do {
        //    let tempText = "\n\(name),\(email),\(language),\(grade)"
        //    print(tempText)
        //    let fileHandle = FileHandle(forWritingAtPath: filepath)
        //    fileHandle?.seekToEndOfFile()
        //    fileHandle?.write(tempText.data(using: .utf8)!)
        //    fileHandle?.closeFile()
        //    try fileContents.forEach { try $0.values.forEach { try "\($0)".write(toFile: filepath, atomically: true, encoding: .utf8) } }
        //
        //    try tempText.write(toFile: filepath, atomically: true, encoding: .utf8)
        //    print(tempText)
        //    try "\n".write(toFile: filepath, atomically: true, encoding: .utf8)
        //    try name.write(toFile: filepath, atomically: true, encoding: .utf8)
        //    try email.write(toFile: filepath, atomically: true, encoding: .utf8)
        //    try language.write(toFile: filepath, atomically: true, encoding: .utf8)
        //    try "\(grade)".write(toFile: filepath, atomically: true, encoding: .utf8)
        //
        //} catch {
        //    print("Fail to write data.")
        //    print(error.localizedDescription)
        //}
    }
    
    func findBy(name: String) -> Dictionary<String, Any>? {
        for dict in fileContents {
            if dict["name"] as! String == name {
                return dict
            }
        }
        return nil
    }

//TODO: - 이메일 해당 사람 정보 지우는 작업 추가
    func removeBy(email: String) -> Bool {
        for dict in fileContents {
            if dict["email"] as! String == email {
                // 지우는 작업
                return true
            } else {
                return false
            }
        }
        return false
    }
    
    //func write(to file: String) -> Bool {
    //    // 파일이 없으면 생성 -> true
    //    // 파일이 이미 있으면 false
    //    filename = file + "csv"
    //    if let filepath = Bundle.main.path(forResource: file, ofType: "csv") {
    //        return false
    //    } else {
    //        filename = Bundle.main.bundlePath + filename
    //        do {
    //            try fileContents
    //        } catch <#pattern#> {
    //            <#statements#>
    //        }
    //
    //        return true
    //    }
    //}
}
