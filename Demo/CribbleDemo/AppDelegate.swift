//
//  AppDelegate.swift
//  CribbleDemo
//
//  Created by Max Sokolov on 04/07/16.
//  Copyright © 2016 Cribble. All rights reserved.
//

import UIKit
import Cribble

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?

    func application(application: UIApplication, didFinishLaunchingWithOptions launchOptions: [NSObject: AnyObject]?) -> Bool {

        let options = CribbleOptions(horizontalStep: 10, verticalStep: 10, opacity: 0.7, color: UIColor.yellowColor())
        Cribble.shared.options = options
        
        return true
    }
    
    override func motionBegan(motion: UIEventSubtype, withEvent event: UIEvent?) {
        guard motion == .MotionShake else { return }

        Cribble.shared.hidden = !Cribble.shared.hidden
    }
}