//
//  main.swift
//  Week1-practice
//
//  Created by Song on 2020/11/04.
//

import Foundation

print("미션1. printXY()")
printXY(array: fillXY(max: 3))
print()
let _ = fillXY(max: 3).map { innerArray in
    let _ = innerArray.map { item in
        print(item, terminator: " ")
    }
    print()
}
print()

print("미션2. printLeftTree()")
printLeftTree(array: fillLeftTree(lines: 5))
print()
let _ = fillLeftTree(lines: 5).map { innerArray in
    let _ = innerArray.map { item in
        print(item, terminator: "")
    }
    print()
}
print()

print("미션3. printRightTree()")
printRightTree(array: fillRightTree(lines: 4))
print()
let _ = fillRightTree(lines: 4).map { innerArray in
    let _ = innerArray.map { item in
        print(item, terminator: "")
    }
    print()
}
print()

print("미션4. printCenterTree()")
printCenterTree(array: fillCenterTree(lines: 5))
print()
let _ = fillCenterTree(lines: 5).map { innerArray in
    let _ = innerArray.map { item in
        print(item, terminator: "")
    }
    print()
}
print()

print("미션5. printNumbers()")
printNumbers(array: fillNumbers(lines: 5))
print()
let _ = fillNumbers(lines: 5).map { innerArray in
    let _ = innerArray.map { item in
        print(item, terminator: " ")
    }
    print()
}
print()

print("미션5. printSquare()")
printSquare(array: fillSquare(columns: 5))
print()
let _ = fillSquare(columns: 5).map { innerArray in
    let _ = innerArray.map { item in
        print(item, terminator: " ")
    }
    print()
}
print()

print("미션5. printReverse()")
printReverse(array: fillReverse(lines: 4))
print()
let _ = fillReverse(lines: 5).map { innerArray in
    let _ = innerArray.map { item in
        print(item, terminator: " ")
    }
    print()
}
print()

//==============================================//

print("미션6. printDiamond()")
printDiamond(array: fillDiamond(lines: 7))
print()
let _ = fillDiamond(lines: 7).map { innerArray in
    let _ = innerArray.map { item in
        print(item, terminator: "")
    }
    print()
}
print()

print("미션7. print3515()")
print(print3515(lines: 15))
