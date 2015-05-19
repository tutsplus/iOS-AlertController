//
//  ViewController.swift
//  Alerts
//
//  Created by Bart Jacobs on 19/05/15.
//  Copyright (c) 2015 Tuts+. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UIAlertViewDelegate {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


    @IBAction func showAlert(sender: AnyObject) {
        /*
        // Initialize Alert View
        let alertView = UIAlertView(title: "Alert", message: "Are you okay?", delegate: self, cancelButtonTitle: "Yes", otherButtonTitles: "No")
        
        // Configure Alert View
        alertView.tag = 1
        
        // Show Alert View
        alertView.show()
        */
        
        // Initialize Alert Controller
        let alertController = UIAlertController(title: "Alert", message: "Are you okay?", preferredStyle: .Alert)
        
        // Initialize Actions
        let yesAction = UIAlertAction(title: "Yes", style: .Default) { (action) -> Void in
            println("The user is okay.")
        }
        
        let noAction = UIAlertAction(title: "No", style: .Default) { (action) -> Void in
            println("The user is not okay.")
        }
        
        // Add Actions
        alertController.addAction(yesAction)
        alertController.addAction(noAction)
        
        // Present Alert Controller
        self.presentViewController(alertController, animated: true, completion: nil)
    }
    
    func alertView(alertView: UIAlertView, clickedButtonAtIndex buttonIndex: Int) {
        if alertView.tag == 1 {
            if buttonIndex == 0 {
                println("The user is okay.")
            } else {
                println("The user is not okay.")
            }
        }
    }
}
