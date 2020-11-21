//
//  main.swift
//  Week1-practice
//
//  Created by Song on 2020/11/04.
//

import Foundation

print("미션1. printXY()")
print(printXY(max: 3))
print()
let _ = printXY(max: 3).map { innerArray in
    print(innerArray)
}
print()
let _ = printXY(max: 3).map { print($0) }
print()

print("미션2. printLeftTree()")
print(printLeftTree(lines: 5))
print()
let _ = printLeftTree(lines: 5).map { innerArray in
    print(innerArray)
}
print()
let _ = printLeftTree(lines: 5).map { print($0) }
print()

print("미션3. printRightTree()")
print(printRightTree(lines: 4))
print()
let _ = printRightTree(lines: 4).map { row in
    print(row)
}
print()
let _ = printRightTree(lines: 4).map { print($0) }
print()

print("미션4. printCenterTree()")
print(printCenterTree(lines: 5))
print()
let _ = printCenterTree(lines: 5).map { row in
    print(row)
}
print()
let _ = printCenterTree(lines: 5).map { print($0) }
print()

print("미션5. printNumbers()")
print(printNumbers(lines: 5))
print()
let _ = printNumbers(lines: 5).map { innerArray in
    print(innerArray)
}
print()
let _ = printNumbers(lines: 5).map { print($0) }
print()

print("미션5. printSquare()")
print(printSquare(columns : 8))
print()
let _ = printSquare(columns: 8).map { innerArray in
    print(innerArray)
}
print()
let _ = printSquare(columns: 8).map { print($0) }
print()

print("미션5. printReverse()")
print(printReverse(lines: 4))
print()
let _ = printReverse(lines: 4).map { innerArray in
    print(innerArray)
}
print()
let _ = printReverse(lines: 4).map { print($0) }
print()
print(printReverse(lines: 5))
print()

print("미션6. printDiamond()")
print(printDiamond(lines: 7))
print()
let _ = printDiamond(lines: 7).map { row in
    print(row)
}
print()
let _ = printDiamond(lines: 7).map { print($0) }
print()

print("미션7. print3515()")
print(print3515(lines: 15))
