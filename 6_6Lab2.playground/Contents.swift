//: Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"



//input: integer n>0

func problemOne(n: Int){
    var S = 0
    for i in 1...n {
        S = S+i*i
        print("S: \(S)")
    }
}

problemOne(10)
