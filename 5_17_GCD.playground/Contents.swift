//: Playground - noun: a place where people can play

import UIKit

//func gcd(var m: Int, var n: Int) -> Int {
//    var t = 0
//    while n != 0 {
//        t = n
//        n = m % n
//        m = t
//    }
//    return m
//}
func gcd(a: Int, _ b: Int) -> Int {
    if b == 0 {
        return a
    } else {
        if a > b {
            return gcd(a-b, b)
        } else {
            return gcd(a, b-a)
        }
    }
}

gcd(31415, 14142)

func induction(var n: Int) {
    print((n*(n+1))/2)
}

induction(21)

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
