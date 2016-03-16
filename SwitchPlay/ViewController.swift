//
//  ViewController.swift
//  SwitchPlay
//
//  Created by Matt Joslin on 2/17/16.
//  Copyright © 2016 Matt Joslin. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var mySwitch: UISwitch!
    @IBOutlet weak var switchState: UILabel!
    @IBOutlet weak var textState: UITextField!
    @IBOutlet weak var textChecker: UITextField!

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        //mySwitch.addTarget(self, action: Selector("switchIsChanged:"), forControlEvents: UIControlEvents.ValueChanged)
        //textState.addTarget(self, action: Selector("textIsChanged"), forControlEvents: UIControlEvents.ValueChanged)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func switchChange(sender: AnyObject) {
        if mySwitch.on {
            mySwitch.setOn(true, animated:true)
            switchState.text = "UISwitch is ON"
            print("Switch is on")
            textState.text = "ON"
            textChecker.text = "ON"
        } else {
            mySwitch.setOn(false, animated:true)
            switchState.text = "UISwitch is OFF"
            print("Switch is off")
            textState.text = "OFF"
            textChecker.text = "OFF"
        }
        
    }
    @IBAction func textChanged(textState: UITextField) {
        var textString = ""
        textString = "ON"
        if textState.text == textString {
            mySwitch.setOn(true, animated: true)
            print("First")
            textChecker.text = textState.text
        } else {
            if textState.text == "OFF" {
                mySwitch.setOn(false, animated: true)
                print("Second")
                textChecker.text = textState.text
                
            } else {
                textChecker.text = textString
                print("Third")
                textChecker.text = textState.text
            }
        }
    }

    
    
    

}




