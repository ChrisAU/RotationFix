//
//  ViewController.swift
//  RotationFix
//
//  Created by Chris Nevin on 7/08/2016.
//  Copyright © 2016 CJNevin. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    override func shouldAutorotate() -> Bool {
        return false
    }
    
    override func supportedInterfaceOrientations() -> UIInterfaceOrientationMask {
        return .portrait
    }
    
    override func preferredInterfaceOrientationForPresentation() -> UIInterfaceOrientation {
        return .portrait
    }
    
    @IBAction func dismissed(segue: UIStoryboardSegue) {
        // Unwind segue
    }
}

