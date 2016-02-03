//
//  ViewController.swift
//  test
//
//  Created by Angelo Kastroulis on 10/24/15.
//  Copyright © 2015 Bravado. All rights reserved.
//

import UIKit

class ViewController: UITableViewController {

    let apps = ["Minecraft","Facebook","Tweetbot","Instagram"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    override func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        // 1
        return 1
    }
    
    override func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // 2
        return apps.count
    }
    
    override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        // 3
        let cell = tableView.dequeueReusableCellWithIdentifier("Cell", forIndexPath: indexPath) as UITableViewCell
        
        cell.textLabel?.text = apps[indexPath.row]
        
        return cell
    }

}

