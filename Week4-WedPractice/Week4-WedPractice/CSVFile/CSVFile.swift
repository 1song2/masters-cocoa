//
//  CSVFile.swift
//  Week4-WedPractice
//
//  Created by Song on 2020/11/25.
//

import Foundation

class CSVFile {
    var fileName: String
    var fileContents = Array<Dictionary<String, Any>>()
    
    init(file: String) {
        self.fileName = file
        
        // 공통으로 뺄 수 있을까?
        guard let filepath = Bundle.main.path(forResource: fileName, ofType: "csv") else {
            //print("There's no file")
            return
        }
        
        var data = ""
        do {
            data = try String(contentsOfFile: filepath)
        } catch {
            print(error.localizedDescription)
            return
        }
        
        var rows  = data.components(separatedBy: "\n")
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
    
//FIXME: - 기능 구현 아직 안됨
    func add(name: String, email: String, language: String, grade: Int) {
        let newItem: [String : Any] = ["name" : name, "email" : email, "language" : language, "grade" : grade]
        fileContents.append(newItem)
        
        guard let filepath = Bundle.main.path(forResource: fileName, ofType: "csv") else {
            print("There's no file")
            return
        }
        
        do {
            try fileContents.forEach { try $0.values.forEach { try "\($0)".write(toFile: filepath, atomically: true, encoding: .utf8) } }
        } catch {
            print("Fail to write data.")
            print(error.localizedDescription)
        }
    }
    
    func findBy(name: String) -> Dictionary<String, Any> {
        for dict in fileContents {
            if dict["name"] as! String == name {
                return dict
            }
        }
        return Dictionary<String, Any>()
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
    //
    //
    //}
}
