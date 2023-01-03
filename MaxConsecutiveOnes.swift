//
//  MaxConsecutiveOnes.swift
//  
//
//  Created by Dogukan Demirci on 3.01.2023.
//
// MARK: Question Link: https://leetcode.com/problems/max-consecutive-ones/

import Foundation

class MaxConsecutiveOnes {
    func findMaxConsecutiveOnes(_ nums: [Int]) -> Int {
        var maxCount = 0
        var currentCount = 0

        for num in nums {
            num == 0 ? (currentCount = 0) : (currentCount += 1)
            if currentCount > maxCount {
                maxCount = currentCount
            }
        }
        return maxCount
    }
}
