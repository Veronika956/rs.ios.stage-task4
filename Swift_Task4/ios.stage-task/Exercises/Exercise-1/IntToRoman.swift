import Foundation

public extension Int {
    
    var roman: String? {
        if (self < 1 || self > 3999) { return nil }
        var number = self
        var roman = ""
        while number > 0 {
            switch number {
            case 1000...4000:
                roman.append("M")
                number -= 1000
            case 900...999:
                roman.append("CM")
                number -= 900
            case 500...899:
                roman.append("D")
                number -= 500
            case 400...499:
                roman.append("CD")
                number -= 400
            case 100...399:
                roman.append("C")
                number -= 100
            case 90...99:
                roman.append("XC")
                number -= 90
            case 50...89:
                roman.append("L")
                number -= 50
            case 40...49:
                roman.append("XL")
                number -= 40
            case 10...39:
                roman.append("X")
                number -= 10
            case 9:
                roman.append("IX")
                number -= 9
            case 5...8:
                roman.append("V")
                number -= 5
            case 4:
                roman.append("IV")
                number -= 4
            case 1...4:
                roman.append("I")
                number -= 1
            default:
                return roman
            }
        }
        
        return roman
    }
}
