//
//  AddJokeViewController.swift
//  FirebaseJokes
//
//  Created by Zoufishan Mehdi on 5/11/16.
//  Copyright © 2016 c4q. All rights reserved.
//

import UIKit
import Firebase

class AddJokeViewController: UIViewController {
    
    @IBOutlet weak var jokeField: UITextField!
    var currentUsername = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        DataService.dataService.CURRENT_USER_REF.observeEventType(FEventType.Value, withBlock: { snapshot in
            
            let currentUser = snapshot.value.objectForKey("username") as! String
            
            print("Username: \(currentUser)")
            self.currentUsername = currentUser
            }, withCancelBlock: { error in
                print(error.description)
        })
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        
    }
    
    @IBAction func saveJoke(sender: AnyObject) {
        
    }
    
    @IBAction func logout(sender: AnyObject) {
        
    }
}
