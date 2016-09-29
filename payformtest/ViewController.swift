//
//  ViewController.swift
//  payformtest
//
//  Created by Andrew Claus on 9/25/16.
//  Copyright © 2016 Church Button LLC. All rights reserved.
//

import UIKit
import PayForm

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        let bundle = NSBundle.init(forClass: PayFormViewController.classForCoder())
        let storyboard = UIStoryboard(name: "PayForm", bundle: bundle)
        if let controller = storyboard.instantiateInitialViewController() as? PayFormViewController {
            
            controller.name = "Lollipop Shop"
            controller.amount = NSDecimalNumber(double: 100.00)
            controller.currencyCode = "CAD"
            controller.purchaseDescription = "item, item, item..."
            //controller.image = UIImage(named: "icon")
            //controller.primaryColor = UIColor.blueColor()       // default: "#067aed"
            //controller.shippingAddressRequired = true           // default: true
            //controller.billingAddressRequired = true            // default: true
            //controller.tokenRequestTimeoutSeconds = 6           // default: 6
            
            controller.processingClosure = nil
            
            self.presentViewController(controller, animated: true, completion: nil)
        }
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

