import UIKit


protocol DoPrintJob {
 func printInfo()
}

class Printer: DoPrintJob {
     func printInfo() {
        print("This is a printer, job done by me being a delegate")
    }
}

class A {
    var delegate: DoPrintJob?
    func logResult() {
        delegate?.printInfo()
    }
}

let objA = A()
let delegateObj = Printer()
objA.delegate = delegateObj

objA.logResult()

