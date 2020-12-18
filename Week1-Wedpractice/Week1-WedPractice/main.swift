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
fillXY(max: 3).forEach { innerArray in
    innerArray.forEach { item in
        print(item, terminator: " ")
    }
    print()
}
print()

print("미션2. printLeftTree()")
printLeftTree(array: fillLeftTree(lines: 5))
print()
fillLeftTree(lines: 5).forEach { innerArray in
    innerArray.forEach { item in
        print(item, terminator: "")
    }
    print()
}
print()

print("미션3. printRightTree()")
printRightTree(array: fillRightTree(lines: 4))
print()
fillRightTree(lines: 4).forEach { innerArray in
    innerArray.forEach { item in
        print(item, terminator: "")
    }
    print()
}
print()

print("미션4. printCenterTree()")
printCenterTree(array: fillCenterTree(lines: 5))
print()
fillCenterTree(lines: 5).forEach { innerArray in
    innerArray.forEach { item in
        print(item, terminator: "")
    }
    print()
}
print()

print("미션5. printNumbers()")
printNumbers(array: fillNumbers(lines: 5))
print()
fillNumbers(lines: 5).forEach { innerArray in
    innerArray.forEach { item in
        print(item, terminator: " ")
    }
    print()
}
print()

print("미션5. printSquare()")
printSquare(array: fillSquare(columns: 5))
print()
fillSquare(columns: 5).forEach { innerArray in
    innerArray.forEach { item in
        print(item, terminator: " ")
    }
    print()
}
print()

print("미션5. printReverse()")
printReverse(array: fillReverse(lines: 4))
print()
fillReverse(lines: 5).forEach { innerArray in
    innerArray.forEach { item in
        print(item, terminator: " ")
    }
    print()
}
print()

print("미션6. printDiamond()")
printDiamond(array: fillDiamond(lines: 7))
print()
fillDiamond(lines: 7).forEach { innerArray in
    innerArray.forEach { item in
        print(item, terminator: "")
    }
    print()
}
print()

print("미션7. print3515()")
print(print3515(lines: 15))
