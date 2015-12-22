//
//  ZPSelectableButton.swift
//  SelectableButtonDemo
//
//  Created by 鹏 朱 on 15/12/22.
//  Copyright © 2015年 鹏 朱. All rights reserved.
//

import UIKit

class ZPSelectableButton: UIButton {
    
    //真实的选中状态
    private var selectedTruely1 = false
    var selectedTruely:Bool { //selectedTruely暴露给外部，当调用者直接修改该属性时会同时修改UIControl中的selected
        get {
            return selectedTruely1
        }
        set (newSelected) {
            self.selectedTruely1 = newSelected
            self.selected = newSelected //同时改变UIControl中的selected状态为目标状态
        }
    }
    // UIControl中的selected只是为了表示当前UI是否应该处于selected UI
    
    override func touchesBegan(touches: Set<UITouch>, withEvent event: UIEvent?) {
        //让highlight UI能被显示出来，因为selected＝true的优先级比highlight＝true更高
        self.selected = false
        
        super.touchesBegan(touches, withEvent: event)
    }
    
    override func touchesCancelled(touches: Set<UITouch>?, withEvent event: UIEvent?) {
        self.selected = self.selectedTruely
        super.touchesCancelled(touches, withEvent: event)
    }
    
    override func touchesEnded(touches: Set<UITouch>, withEvent event: UIEvent?) {
        self.selectedTruely = !self.selectedTruely //改变真实的选中状态
        super.touchesEnded(touches, withEvent: event)
    }

}
