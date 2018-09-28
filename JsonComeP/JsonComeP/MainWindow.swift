//
//  MainWindow.swift
//  JsonComeP
//
//  Created by mac1 on 2018/9/28.
//  Copyright © 2018年 bjztzh. All rights reserved.
//

import Cocoa

class MainWindow: NSWindow {
    
    public func setUI() {
        self.isOpaque = false
        self.alphaValue = 0.9
        self.backgroundColor = NSColor(red: 0.0, green: 0.0, blue: 0.0, alpha: 0.1)
        //self.titlebarAppearsTransparent = true
        self.hasShadow = false
     //   self.styleMask = .fullSizeContentView
        self.ignoresMouseEvents = true
    }
    
}
