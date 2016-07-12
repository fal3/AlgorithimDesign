

import UIKit


func partitionLomuto<T: Comparable>(inout a: [T], low: Int, high: Int) -> Int {
    let pivot = a[high]
    
    var i = low
    for j in low..<high {
        if a[j] <= pivot {
            (a[i], a[j]) = (a[j], a[i])
            i += 1
        }
    }
    
    (a[i], a[high]) = (a[high], a[i])
    return i
}

var list = [4,3,25,6,72,35,2,62,7,4,3]
let p = partitionLomuto(&list, low: 0, high: list.count - 1)
list  // show the results

func quicksortRandom<T: Comparable>(inout a: [T], low: Int, high: Int) {
    if low < high {
        let pivotIndex = random(low, to: high)    // 1
        
        (a[pivotIndex], a[high]) = (a[high], a[pivotIndex])  // 2
        
        let p = partitionLomuto(&a, low: low, high: high)
        quicksortRandom(&a, low: low, high: p - 1)
        quicksortRandom(&a, low: p + 1, high: high)
    }
}


func random(start: Int, to end: Int) -> Int {
    var a = start
    var b = end
    // swap to prevent negative integer crashes
    if a > b {
        swap(&a, &b)
    }
    return Int(arc4random_uniform(UInt32(b - a + 1))) + a
}

quicksortRandom(&list, low: 0, high: list.count-1)



