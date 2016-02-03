//: Playground - noun: a place where people can play


/*:
# Mixins over Inheritance (2/4)
## The problem with Inheritance
this stuff is heavily inspired by Olivier Halligon [@aligatr](https://twitter.com/aligatr) and Matthijs Hollemans [@mhollemans](https://twitter.com/mhollemans)

Based on: [Mixins over Inheritance](http://alisoftware.github.io/swift/protocol/2015/11/08/mixins-over-inheritance/) and by [Mixins and Traits in Swift 2.0](http://matthijshollemans.com/2015/07/22/mixins-and-traits-in-swift-2/)
*/


import UIKit

var str = "Hello, playground"
public protocol Flyer {
   func fly()
}

extension Flyer {
    public func fly() {
        print("I believe I can flyyyyy ♬")
    }
}

protocol FrequentFlyer: Flyer {
    
}

extension FrequentFlyer {
    func fly() {
        print("echt oft - platin status ✈️")
    }
}


class Alien: FrequentFlyer {
    func fly() {
        print("Alien fliegt")
    }
}

class Superman: Alien {
//    public func fly() {
//        print("Superman fliegt")
//    }
}

class Batman: Flyer {
    //    public func fly() {
    //        print("Superman fliegt")
    //    }
}
protocol A {
    func test()
}

protocol B {
    func test()
}

protocol C {
    func test()
}

extension C where Self: A {
    func test() {
        print("A")
    }
}


extension C where Self: B {
    func test() {
        print("b")
    }
}

struct CA: C, A {
}

let ca = CA()
ca.test()


struct CB: C, B {
}

let cb = CB()
cb.test()

struct CAB: C, A, B {
    func test() {
        print("CAB")
    }
}
let cab = CAB()
cab.test()




