//: Playground - noun: a place where people can play

import UIKit

var A = [1,2,3,5,2,1,3]

func singleNumber(nums: [Int]) -> Int {
    var r = 0
    for num in nums {
        r ^= num
    }
    return r
}

singleNumber(A)