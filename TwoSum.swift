//
//  TwoSum.swift
//  LeetCodeSolutions
//
//  Created by Dogukan Demirci on 01.01.2023.
//
// MARK: Question Link: https://leetcode.com/problems/two-sum/

import Foundation

class TwoSum {
    func twoSum(_ nums: [Int], _ target: Int) -> [Int] {
        var dict = [Int: Int]()

        for (index, number) in nums.enumerated() {
            if let val = dict[target-number] {
                return [val, index]
            }
            dict[number] = index
        }
        return []
    }
}
