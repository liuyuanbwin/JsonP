//
//  mainViewController.swift
//  JsonComeP
//
//  Created by mac1 on 2018/9/27.
//  Copyright © 2018年 bjztzh. All rights reserved.
//

import Cocoa

class mainViewController: NSViewController {
    @IBOutlet weak var originTextView: NSScrollView!
    
    open var windowController : NSWindowController?

    override func viewDidLoad() {
        super.viewDidLoad()
        originTextView.backgroundColor = NSColor(calibratedHue: 0, saturation: 0, brightness: 0.2, alpha: 0.5)
    }
    
    override func viewDidAppear() {
        super.viewDidAppear()
        view.window?.level = .screenSaver
    }
    
}
