//
//  ViewController.swift
//  SelectableButtonDemo
//
//  Created by 鹏 朱 on 15/12/22.
//  Copyright © 2015年 鹏 朱. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var button1: ZPSelectableButton!
    override func viewDidLoad() {
        super.viewDidLoad()

        // 从Normal进入Selected，会自动交换button的前景色和背景色
        // 所以在此处把前景色设为透明
        button1.tintColor = UIColor.clearColor()
        
        button1.setTitleColor(UIColor.greenColor(), forState: UIControlState.Normal)
        button1.setTitleColor(UIColor.redColor(), forState: UIControlState.Selected)
        
        // 需要在StoryBoard当中固定按钮的高宽约束，以免图片View对button的高宽产生不必要的影响。
        button1.setBackgroundImage(UIImage(named: "button-selected"), forState: UIControlState.Selected)
        button1.setBackgroundImage(UIImage(named: "button-selected"), forState: UIControlState.Highlighted)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }

   
}

