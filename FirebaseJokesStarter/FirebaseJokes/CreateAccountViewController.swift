//
//  CreateAccountViewController.swift
//  FirebaseJokes
//
//  Created by Zoufishan Mehdi on 5/11/16.
//  Copyright © 2016 c4q. All rights reserved.
//

import UIKit

class CreateAccountViewController: UIViewController {
    
    @IBOutlet weak var usernameField: UITextField!
    @IBOutlet weak var emailField: UITextField!
    @IBOutlet weak var passwordField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view.
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func createAccount(sender: AnyObject) {
        
    }
    
    @IBAction func cancelCreateAccount(sender: AnyObject) {
        self.dismissViewControllerAnimated(true, completion: {})
    }
    
}
