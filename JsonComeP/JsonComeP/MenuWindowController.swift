//
//  MenuWindowController.swift
//  JsonComeP
//
//  Created by mac1 on 2018/9/28.
//  Copyright © 2018年 bjztzh. All rights reserved.
//

import Cocoa

class MenuWindowController: NSWindowController {

    override func windowDidLoad() {
        super.windowDidLoad()
        if let window = window, let screen = window.screen {
            let offsetFromLeftOfScreen: CGFloat = 0
            let offsetFromTopOfScreen: CGFloat = 0
            let screenRect = screen.visibleFrame
            let newOriginY = screenRect.maxY - window.frame.height - offsetFromTopOfScreen
            window.setFrame(NSMakeRect(screenRect.maxX - 400, screenRect.maxY - 10 - 40, 400, 30), display: true)
          //  window.showsToolbarButton = true
            window.isMovable = false// = .borderless
        }
    }

}
