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
        super.viewDidLoad()
        var list = [1,3,2,4,6,2,1]
        self.testBubble(list)
        // Do any additional setup after loading the view, typically from a nib.
    }

    func testBubble(array:[Int]) {
        var tempsort = BubbleSort()
        var sortArray = tempsort.bubbleSort(array)
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

