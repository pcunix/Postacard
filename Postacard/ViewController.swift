//
//  ViewController.swift
//  Postacard
//
//  Created by Tony on 9/20/14.
//  Copyright (c) 2014 A.P. Lawrence. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var messageLabel: UILabel!
    
    @IBOutlet weak var enterNameText: UITextField!
    
    @IBOutlet weak var enterMessageText: UITextField!
    
    @IBOutlet weak var mailButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


    @IBAction func sendmailButtonPress(sender: UIButton) {
        messageLabel.hidden = false
        messageLabel.textColor = UIColor.redColor()
        messageLabel.text = enterMessageText.text
        enterMessageText.text = ""
        enterMessageText.resignFirstResponder()
        mailButton.setTitle("Mail Sent", forState: UIControlState.Normal)

        
    }
 
}

