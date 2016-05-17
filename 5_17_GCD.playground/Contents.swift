//: Playground - noun: a place where people can play

import UIKit

var min = 0


func gcd(var m: Int, var n: Int) -> Int {
    var t = 0
    while n != 0 {
        t = n
        n = m % n
        m = t
    }
    return m
}

func printFirstNumbers(N: Int) {
    print("start printFirstNumbers(\(N))")
    
    if N > 1 {
        print("printFirstNumbers(\(N)) calls printFirstNumbers(\(N-1))")
        
        printFirstNumbers(N - 1)
    }
    
    print("printFirstNumbers(\(N)) will print \(N)")
    
    print("end printFirstNumbers(\(N))")
}

//gcd(15, b: 7)

gcd(31415, n: 14142)