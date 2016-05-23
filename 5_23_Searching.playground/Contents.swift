//: Playground - noun: a place where people can play

import UIKit

//Sequential search

var A = [10,14,19,26,27,31,33,35,42,44]
var i = -1
func sequentialSearch() {
    i += 1
    print("doing")
    var n = A.count
    var target = 44
    if i > n {
        print("element not found")
    }
    if A[i] == target {
        sequentialSearch()
        print("yo")
    }
    
    
}

sequentialSearch()