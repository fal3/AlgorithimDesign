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

var list = [1,3,5,6,7,8]
print(list)

func binarySearch(sorted: [Int], x: Int) {
    var lowerBound = 1
    var upperBound = sorted.count
    
    
    
    
    var found = false
    
    while !found {
        if upperBound < lowerBound {
            print("X does not exist")
            found = true
        }
        let midPoint = lowerBound + ( upperBound + lowerBound ) / 2
        if x > sorted[midPoint] {
            lowerBound = midPoint + 1
        } else if x < sorted[midPoint] {
            upperBound = midPoint - 1
        } else if x == sorted[midPoint] {
            print("found em")
            found = true
        }
        upperBound+=1
    }
    
}




binarySearch(list, x: 7)


