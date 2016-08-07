//
//  RotatingModalViewController.swift
//  RotationFix
//
//  Created by Chris Nevin on 7/08/2016.
//  Copyright © 2016 CJNevin. All rights reserved.
//
//  This is how to stop the presenting view controller from rotating while presenting a view controller 
//  even if it the presenting view controller has disabled rotation.
//
//  It is a bug that occurs in iOS8 and iOS9 but doesn't seem to occur on iOS10 (it just doesn't rotate
//  on presentation).
//

import UIKit

class RotatingModalViewController : UIViewController {
    
    private var canRotate: Bool = true
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        canRotate = true
        
        // Rotate to device orientation
        UIViewController.attemptRotationToDeviceOrientation()
    }
    
    override func shouldAutorotate() -> Bool {
        return true
    }
    
    override func supportedInterfaceOrientations() -> UIInterfaceOrientationMask {
        return canRotate ? .allButUpsideDown : .portrait
    }
    
    override func preferredInterfaceOrientationForPresentation() -> UIInterfaceOrientation {
        return .portrait
    }
}
