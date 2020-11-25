//
//  Multithreading.swift
//  Week4-WedPractice
//
//  Created by Song on 2020/11/25.
//

import Foundation

class Multithreading {
    var wordCountDict = Dictionary<String, Int>()
    
    var thread1: Thread? = nil
    var thread2: Thread? = nil
    var thread3: Thread? = nil
    var thread4: Thread? = nil
    var thread5: Thread? = nil
    var thread6: Thread? = nil
    var thread7: Thread? = nil
    var thread8: Thread? = nil
    var thread9: Thread? = nil
    var thread10: Thread? = nil
    var thread11: Thread? = nil
    var thread12: Thread? = nil
    var thread13: Thread? = nil
    var thread14: Thread? = nil
    var thread15: Thread? = nil
    var thread16: Thread? = nil
    var thread17: Thread? = nil
    var thread18: Thread? = nil
    var thread19: Thread? = nil
    var thread20: Thread? = nil
    
    func doOperation() {
        thread1 = Thread(target: self, selector: #selector(Multithreading.find(word:)), object: "대중")
        thread2 = Thread(target: self, selector: #selector(Multithreading.find(word:)), object: "경제")
        thread3 = Thread(target: self, selector: #selector(Multithreading.find(word:)), object: "재산")
        thread4 = Thread(target: self, selector: #selector(Multithreading.find(word:)), object: "자유")
        thread5 = Thread(target: self, selector: #selector(Multithreading.find(word:)), object: "국제")
        thread6 = Thread(target: self, selector: #selector(Multithreading.find(word:)), object: "시장")
        thread7 = Thread(target: self, selector: #selector(Multithreading.find(word:)), object: "사상")
        thread8 = Thread(target: self, selector: #selector(Multithreading.find(word:)), object: "부자")
        thread9 = Thread(target: self, selector: #selector(Multithreading.find(word:)), object: "학자")
        thread10 = Thread(target: self, selector: #selector(Multithreading.find(word:)), object: "개인")
        thread11 = Thread(target: self, selector: #selector(Multithreading.find(word:)), object: "욕망")
        thread12 = Thread(target: self, selector: #selector(Multithreading.find(word:)), object: "생활")
        thread13 = Thread(target: self, selector: #selector(Multithreading.find(word:)), object: "자원")
        thread14 = Thread(target: self, selector: #selector(Multithreading.find(word:)), object: "사람")
        thread15 = Thread(target: self, selector: #selector(Multithreading.find(word:)), object: "노동")
        thread16 = Thread(target: self, selector: #selector(Multithreading.find(word:)), object: "인물")
        thread17 = Thread(target: self, selector: #selector(Multithreading.find(word:)), object: "소비")
        thread18 = Thread(target: self, selector: #selector(Multithreading.find(word:)), object: "사회")
        thread19 = Thread(target: self, selector: #selector(Multithreading.find(word:)), object: "이론")
        thread20 = Thread(target: self, selector: #selector(Multithreading.find(word:)), object: "새로운")
        thread1?.start()
        thread2?.start()
        thread3?.start()
        thread4?.start()
        thread5?.start()
        thread6?.start()
        thread7?.start()
        thread8?.start()
        thread9?.start()
        thread10?.start()
        thread11?.start()
        thread12?.start()
        thread13?.start()
        thread14?.start()
        thread15?.start()
        thread16?.start()
        thread17?.start()
        thread18?.start()
        thread19?.start()
        thread20?.start()
    }
    
    func readDataFromFile(file: String) -> String {
        guard let filepath = Bundle.main.path(forResource: file, ofType: "txt") else {
            fatalError()
        }
        var data = ""
        do {
            data = try String(contentsOfFile: filepath)
        } catch {
            print(error.localizedDescription)
        }
        return data
    }
    
    @objc func find(word: String) {
        autoreleasepool { () in
            let sourceText = readDataFromFile(file: "bookfile")
            let count = sourceText.components(separatedBy: word).count - 1
            wordCountDict.updateValue(count, forKey: word)
            print("\(word): \(count)")
        }
    }
}
