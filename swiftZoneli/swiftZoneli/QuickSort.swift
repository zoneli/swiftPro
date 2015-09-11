//
//  QuickSort.swift
//  swiftZoneli
//
//  Created by lyz1 on 15/6/18.
//  Copyright (c) 2015年 lyz1. All rights reserved.
// 用于提交dev分支

import Foundation
class QuickSort{
    
    func quickSort(inout array:[Int],inout leftIndex:Int,inout rightIndex:Int) {
        var left = 0;
        var right = array.count-1;
        self.getMiddleIndex(&array, leftIndex:left, rightIndex:right);
        println("afterQuickSort=\(array)")
    }
    func getMiddleIndex(inout array:[Int],leftIndex:Int,rightIndex:Int) {
        if leftIndex >= rightIndex {
            return;
        }
        var i = leftIndex;
        var j = rightIndex;
        var key = array[leftIndex]
        while i < j {
            while i < j && key <= array[j] {
                j--;
            }
            array[i] = array [j]
            while i < j && key >= array[i] {
                i++;
            }
            array[j] = array[i]
        }
        array[i] = key
        self.getMiddleIndex(&array, leftIndex: leftIndex, rightIndex:i-1)
        self.getMiddleIndex(&array, leftIndex: i+1, rightIndex:rightIndex)
    }
}