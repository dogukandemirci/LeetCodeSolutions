//
//  StringMatchingInAnArray.swift
//  
//
//  Created by Dogukan Demirci on 2.01.2023.
//
// MARK: https://leetcode.com/problems/string-matching-in-an-array/

import Foundation
class StringMatchingInAnArray {
    func stringMatching(_ words: [String]) -> [String] {
        return words.filter {  w in words.contains { $0 != w && $0.contains(w) }
        }
    }
}
