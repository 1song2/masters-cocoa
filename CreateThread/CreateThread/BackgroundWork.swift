//
//  BackgroundWork.swift
//  CreateThread
//
//  Created by Song on 2020/11/24.
//

import Foundation

class BackgroundWork {
    var thread : Thread? = nil
    
    func doTimeConsumingOperation(operation : Any?) {
        thread = Thread(target: self,
                   selector: #selector(BackgroundWork.runHelper), object: operation)
        thread?.name = "otherThread"
        thread?.start()
    }
    
    @objc func runHelper(operation : Any?) {
        autoreleasepool { () in
            //operation.doOperation()
            //print("Other thread is running...")
            for index in 1...10 {
                print("\(thread?.name ?? "") is running for the  \(index) time(s).")
            }
        }
    }
}
