//
//  ViewController.swift
//  swiftZoneli
//
//  Created by lyz1 on 15/6/15.
//  Copyright (c) 2015年 lyz1. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        //注释掉
        super.viewDidLoad()
        //必须调用父类方法
        var list = [1,3,2,4,6,2,1]
        println("arrayBeforeSort\(list)")
        self.testBubble(list)
        self.testQuickSort(&list)
        // Do any additional setup after loading the view, typically from a nib.
    }

    func testBubble(array:[Int]) {
        var tempsort = BubbleSort()
        var sortArray = tempsort.bubbleSort(array)
    }
    
    func testQuickSort(inout array:[Int]) {
        var tempsort = QuickSort()
        var left = 0;
        var right = array.count-1;
        tempsort.quickSort(&array, leftIndex: &left, rightIndex: &right)
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

