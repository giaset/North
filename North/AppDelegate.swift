//
//  AppDelegate.swift
//  North
//
//  Created by Gianni Settino on 2014-10-13.
//  Copyright (c) 2014 Milton and Parc. All rights reserved.
//

import UIKit

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?

    func application(application: UIApplication, didFinishLaunchingWithOptions launchOptions: [NSObject: AnyObject]?) -> Bool {
        self.window = UIWindow(frame: UIScreen.mainScreen().bounds)
        
        self.window!.rootViewController = MainTableViewController()
        
        self.window!.makeKeyAndVisible()
        
        return true
    }
    
}
