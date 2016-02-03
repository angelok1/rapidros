//
//  ROSTableViewController.swift
//  patient_facing
//
//  Created by Angelo Kastroulis on 10/24/15.
//  Copyright © 2015 Bravado. All rights reserved.
//

import Foundation
import UIKit

class ROSTableViewController: UITableViewController {
    //var tableView = UITableView()
    let apps = ["Minecraft","Facebook","Tweetbot","Instagram"]
    var questions:[Question]=[]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        questions = [
            Question(text:"How's it going?", yes: false, answered: false )
        ]
        
    }
    
    override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell
    {
        var cell = tableView.dequeueReusableCellWithIdentifier("QuestionCell") as! QuestionCell
        
        cell.lblText.text = questions[indexPath.row].text
        cell.buttonYes.addTarget(self, action: "pushYes:", forControlEvents: UIControlEvents.TouchUpInside)
        
        cell.buttonNo.addTarget(self, action: "pushNo:", forControlEvents: UIControlEvents.TouchUpInside)
        //var imageName = UIImage(named: transportItems[indexPath.row])
        //cell.imageView?.image = imageName
        
        cell.tag = indexPath.row
        
        return cell
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func pushNo(sender:AnyObject) {
        print("tap1")
        questions[sender.tag].yes = false
        questions[sender.tag].answered = true
        
        var b = sender as! UIButton
       // b.backgroundColor = UIColor.redColor()
        b.selected = true;
    }
    
    func pushYes(sender:AnyObject) {
        print("tap2")
        questions[sender.tag].yes = true
        questions[sender.tag].answered = true
        var b = sender as! UIButton
        //b.backgroundColor = UIColor.redColor()
        b.selected = true;
    }
    
    
    override func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        // 1
        return 1
    }
    
    override func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // 2
        return questions.count
    }

    
    
    override func tableView(tableView: UITableView, heightForRowAtIndexPath indexPath: NSIndexPath) -> CGFloat
    {
        return 52.0
    }
    
    
    override func tableView(tableView: UITableView, didSelectRowAtIndexPath indexPath: NSIndexPath)
    {
        tableView.deselectRowAtIndexPath(indexPath, animated: true)
    }
    
    override func tableView(tableView: UITableView, heightForHeaderInSection section: Int) -> CGFloat
    {
        if section == 0
        {	return 64.0
        }
        
        return 32.0
    }
    
    override func tableView(tableView: UITableView, viewForHeaderInSection section: Int) -> UIView?
    {
        let ret = UILabel(frame: CGRectMake(10, 0, self.tableView.frame.width - 20, 32.0))
        ret.backgroundColor = UIColor.clearColor()
        ret.text = "TV Shows"
        ret.textAlignment = NSTextAlignment.Center
        return ret
    }


}