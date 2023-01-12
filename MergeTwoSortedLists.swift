//
//  MergeTwoSortedLists.swift
//  
//
//  Created by Dogukan Demirci on 12.01.2023.
//
// MARK: https://leetcode.com/problems/merge-two-sorted-lists/

import Foundation
class MergeTwoSortedLists {
    func mergeTwoLists(_ list1: ListNode?, _ list2: ListNode?) -> ListNode? {
        var result = ListNode()
        
        if list1 == nil {
            return list2
        }
        
        if list2 == nil {
            return list1
        }
        
        guard let list1 = list1,
              let list2 = list2
        else {
            return nil
        }
        
        if list1.val < list2.val {
            result = list1
            result.next = mergeTwoLists(list1.next, list2)
        } else {
            result = list2
            result.next = mergeTwoLists(list1, list2.next)
        }
        
        return result
    }
}
