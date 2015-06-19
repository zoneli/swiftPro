//
//  BubbleSort.swift
//  swiftZoneli
//
//  Created by lyz1 on 15/6/18.
//  Copyright (c) 2015年 lyz1. All rights reserved.
//

import Foundation
class BubbleSort {
 
    func bubbleSort(array:[Int])->([Int]) {
        var strarr:[Int] = array
        for var i=0; i<strarr.count; i++ {
            for var j:Int = 0; j<strarr.count-i-1; j++ {
            if (strarr[j+1] < strarr[j]){
                    var temp = strarr[j]
                    strarr[j] = strarr[j+1]
                    strarr[j+1] = temp
                }
            }
        }
        println("bubblesort=\(strarr)")
        return strarr;
    }
}