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

        self.backgroundColor = NSColor(red: 0.1, green: 0.0, blue: 0.0, alpha: 0)
        self.titlebarAppearsTransparent = true
    }
}
