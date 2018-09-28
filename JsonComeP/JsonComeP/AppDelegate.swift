//
//  AppDelegate.swift
//  JsonComeP
//
//  Created by mac1 on 2018/9/18.
//  Copyright © 2018年 bjztzh. All rights reserved.
//

import Cocoa

@NSApplicationMain
class AppDelegate: NSObject, NSApplicationDelegate {

    var mainWindowController: NSWindowController?
    @IBOutlet weak var menuList: NSMenu!
    @IBOutlet weak var formatJson: NSMenuItem!
    
    @IBAction func showFormatJson(_ sender: NSMenuItem) {
        let mainViewController_ = mainViewController(nibName:NSNib.Name(rawValue: "mainViewController"), bundle: Bundle.main)
        let mainWindow =  MainWindow(contentViewController: mainViewController_)
        mainWindow.setUI()
        
        mainWindowController = MainWindowController(window: mainWindow)
        mainWindowController?.windowDidLoad()
        mainViewController_.windowController = mainWindowController
        mainWindowController?.showWindow(nil)
    }
    
    let statusItem = NSStatusBar.system.statusItem(withLength: NSStatusItem.variableLength)
    
    func applicationDidFinishLaunching(_ aNotification: Notification) {
        
        statusItem.title = "JsonP"
        statusItem.menu = menuList
       
    }
    
    func applicationWillTerminate(_ aNotification: Notification) {
        
    }

}

