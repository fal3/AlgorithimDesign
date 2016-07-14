

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


func randomStringWithLength (len : Int) -> NSString {
    
    let letters : NSString = "abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789"
    
    var randomString : NSMutableString = NSMutableString(capacity: len)
    
    for (var i=0; i < len; i++){
        var length = UInt32 (letters.length)
        var rand = arc4random_uniform(length)
        randomString.appendFormat("%C", letters.characterAtIndex(Int(rand)))
    }
    
    return randomString
}


let values = [["checked" : false], ["ID" : ""]]


for (x,y) in values.enumerate() {
  
    print(" \(x) and ,\(y)")
}
//Input: Subarray A[l..r] of array A[0..n-1] of orderable elements and //integer k (1 ≤ k ≤ r-l+1)
func quickSelect(inout A: [Int], k: Int) -> Int {
    
    let s = partitionLomuto(&A, low: 0, high: A.count-1)
    
    return 0
    
}


//ALGORITHM QuickSelect(A[l..r], k)
////Input: Subarray A[l..r] of array A[0..n-1] of orderable elements and //integer k (1 ≤ k ≤ r-l+1)
////Output: The value of the k-th smallest element in A[l..r]
//s <- LomutoPartition(A[l..r])
//if s = k-1
//return A[s]
//else if s > l+k-1
//QuickSelect(A[l..s-1], k)
//else
//QuickSelect(A[s+1..r], k-1-s)
//

randomStringWithLength(10)
randomStringWithLength(10)
randomStringWithLength(10)



