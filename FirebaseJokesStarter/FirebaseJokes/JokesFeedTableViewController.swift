//
//  JokesFeedTableViewController.swift
//  FirebaseJokes
//
//  Created by Zoufishan Mehdi on 5/11/16.
//  Copyright © 2016 c4q. All rights reserved.
//

import UIKit

class JokesFeedTableViewController: UITableViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        
    }
    
    override func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        
        return 1
    }
    
    override func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        return 0
    }
    
    
    override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        
        return tableView.dequeueReusableCellWithIdentifier("JokeCellTableViewCell") as! JokeCellTableViewCell
        
    }
    
}
