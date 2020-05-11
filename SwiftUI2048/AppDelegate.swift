//
//  AppDelegate.swift
//  SwiftUI2048
//
//  Created by Hongyu on 6/5/19.
//  Copyright © 2019 Cyandev. All rights reserved.
//

import UIKit
import SwiftUI

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

    var gameLogic: GameLogic!
    var window: UIWindow?
    
    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        
        gameLogic = GameLogic()
        
        window = UIWindow(frame: UIScreen.main.bounds)
        window!.rootViewController = UIHostingController(rootView:
            GameView().environmentObject(gameLogic)
        )
        window!.makeKeyAndVisible()
        
        return true
    }

    func applicationWillTerminate(_ application: UIApplication) {
        // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
    }
    
    @objc func newGame(_ sender: AnyObject?) {
        gameLogic.newGame()
    }
}

