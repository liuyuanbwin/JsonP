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
    
    var menuWindowController: MenuWindowController?

    override func viewDidLoad() {
        super.viewDidLoad()
       
        
    }
    override func viewWillAppear() {
        super.viewWillAppear()
        originTextView.backgroundColor = NSColor(calibratedHue: 0, saturation: 0, brightness: 0.2, alpha: 0.5)
        
        let menuVC = MenuViewController(nibName: NSNib.Name(rawValue: "MenuViewController"), bundle: Bundle.main)
        let menuWindow = MenuWindow(contentViewController: menuVC)
        menuWindow.setUI()
        
        menuWindowController = MenuWindowController(window: menuWindow)
        menuWindowController?.windowDidLoad()
        menuVC.windowController = menuWindowController
        //menuWindowController?.showWindow(nil)]
        self.windowController?.window?.addChildWindow(menuWindow, ordered: .above)
 
    }
    
    override func viewDidAppear() {
        super.viewDidAppear()
        view.window?.level = .screenSaver
    }
    
}
