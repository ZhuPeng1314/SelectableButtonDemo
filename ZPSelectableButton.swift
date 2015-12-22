//
//  ZPSelectableButton.swift
//  SelectableButtonDemo
//
//  Created by 鹏 朱 on 15/12/22.
//  Copyright © 2015年 鹏 朱. All rights reserved.
//

import UIKit

class ZPSelectableButton: UIButton {
    
    var selectedCopy = false
    
    override func touchesBegan(touches: Set<UITouch>, withEvent event: UIEvent?) {
        //在刚刚按下时保存selected状态
        self.selectedCopy = self.selected
        //让highlight UI能被显示出来，因为selected＝true的优先级比highlight＝true更高
        self.selected = false
        
        super.touchesBegan(touches, withEvent: event)
    }
    
    override func touchesCancelled(touches: Set<UITouch>?, withEvent event: UIEvent?) {
        self.selected = self.selectedCopy
        super.touchesCancelled(touches, withEvent: event)
    }
    
    override func touchesEnded(touches: Set<UITouch>, withEvent event: UIEvent?) {
        self.selected = !self.selectedCopy //改变selected状态为目标状态
        super.touchesEnded(touches, withEvent: event)
    }

}
