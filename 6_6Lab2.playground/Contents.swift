//: Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"


//Problem 1
//input: integer n>0

func problemOne(n: Int){
    var S = 0
    for i in 1...n {
        S = S+i*i
        print("S: \(S)")
    }
}

problemOne(10)


//Problem 2
//input: nxn matrix A of real numbers




func problemTwo(A: [[Int]]) {

    print(A)
    for i in 0...A.count-2 {
        print(i)
        for j in i+1 ... A.count-1 {
            print("\(A[i][j]), \(A[j][i])")
            print("i: \(i) j: \(j)")
            if A[i][j] != A[j][i] {
                print("i: \(i) j: \(j)")
                print("A[i][j]: \(A[i][j]) A[j][i]: \(A[j][i])")

                print("true")
                print("\(A[i][j]), \(A[j][i])")
                
                
            }
        }
    }
}



var x: [[Int]] = [
    [2,8,7,4],
    [8,9,5,2],
    [7,5,4,4],
    [2,2,4,1]
]

var b: [[Int]] = [
    [3,3,3],
    [3,3,3],
    [3,3,3]
]

problemTwo(x)

var p1 = 0.7
var p2 = 0.5
var p3 = 0.4
var p4 = 0.1
var p5 = 0.2

(p1*p3*p5) + (p2*p3*p4) + (p1*p4) + (p2*p5)

p1*p4 + (p1*p3*p5) + (p2*p5) + (p2*p3*p4) - (p1*p3*p4*p5) - (p1*p2*p4*p5) - (p1*p3*p4*p2) - (p1*p3*p2*p5) - (p2*p3*p4*p5) - (p1*p3*p4*p5*p2) + 4*(p1*p3*p4*p5*p2) - (p1*p3*p4*p5*p2)

// var eh = 95
//for i in 1...15 {
//   var prob = eh-1
//    eh-=1
//    x = eh / 95
//    sum += x
//}




//symetric
