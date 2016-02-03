//
//  ViewController.swift
//  patient_facing
//
//  Created by Angelo Kastroulis on 10/24/15.
//  Copyright © 2015 Bravado. All rights reserved.
//

import UIKit

class MyTableViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {

    var tableView = UITableView()
    let apps = ["Minecraft","Facebook","Tweetbot","Instagram"]
    let checkIcon = FAKIonIcons.ios7CheckmarkIconWithSize(30)
    let composeIcon = FAKIonIcons.ios7CheckmarkIconWithSize(30)
    var removeCellBlock: ((SBGestureTableView, SBGestureTableViewCell) -> Void)!
    /*
    override func viewDidLoad() {
        super.viewDidLoad()
        
        var swipeRight = UISwipeGestureRecognizer(target: self, action: "respondToSwipeGesture:")
        swipeRight.direction = UISwipeGestureRecognizerDirection.Right
        //swipeRight.numberOfTouchesRequired=1
        self.view.addGestureRecognizer(swipeRight)
        //tableView.addGestureRecognizer(swipeRight);
        
        var swipeLeft = UISwipeGestureRecognizer(target: self, action: "respondToSwipeGesture:")
        swipeLeft.direction = UISwipeGestureRecognizerDirection.Left
        self.view.addGestureRecognizer(swipeLeft)
        // Do any additional setup after loading the view, typically from a nib.
    }
*/

    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let addButton = UIBarButtonItem(barButtonSystemItem: .Add, target: self, action: "insertNewObject:")
        navigationItem.rightBarButtonItem = addButton
        
        setupIcons()
        /*
        tableView.didMoveCellFromIndexPathToIndexPathBlock = {(fromIndexPath: NSIndexPath, toIndexPath: NSIndexPath) -> Void in
            self.objects.exchangeObjectAtIndex(toIndexPath.row, withObjectAtIndex: fromIndexPath.row)
        }
*/
        removeCellBlock = {(tableView: SBGestureTableView, cell: SBGestureTableViewCell) -> Void in
            let indexPath = tableView.indexPathForCell(cell)
            //self.objects.removeObjectAtIndex(indexPath!.row)
            tableView.removeCell(cell, duration: 0.3, completion: nil)
        }
    }
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let size = CGSizeMake(30, 30)
        let cell = tableView.dequeueReusableCellWithIdentifier("Cell", forIndexPath: indexPath) as! SBGestureTableViewCell
        
        cell.firstLeftAction = SBGestureTableViewCellAction(icon: checkIcon.imageWithSize(size), color: UIColor.grayColor(), fraction: 0.3, didTriggerBlock: removeCellBlock)
        /*
        cell.secondLeftAction = SBGestureTableViewCellAction(icon: closeIcon.imageWithSize(size), color: redColor, fraction: 0.6, didTriggerBlock: removeCellBlock)
*/
        cell.firstRightAction = SBGestureTableViewCellAction(icon: composeIcon.imageWithSize(size), color: UIColor.grayColor(), fraction: 0.3, didTriggerBlock: removeCellBlock)
        /*
        cell.secondRightAction = SBGestureTableViewCellAction(icon: clockIcon.imageWithSize(size), color: brownColor, fraction: 0.6, didTriggerBlock: removeCellBlock)
        */
        //let object = apps[indexPath.row]
        cell.textLabel!.text = apps[indexPath.row]
        
        
        return cell
    }
    
    
    func setupIcons() {
        checkIcon.addAttribute(NSForegroundColorAttributeName, value: UIColor.whiteColor())
        //closeIcon.addAttribute(NSForegroundColorAttributeName, value: UIColor.whiteColor())
        composeIcon.addAttribute(NSForegroundColorAttributeName, value: UIColor.whiteColor())
        //clockIcon.addAttribute(NSForegroundColorAttributeName, value: UIColor.whiteColor())
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        // 1
        return 1
    }
    
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // 2
        return apps.count
    }
    
    
    
    
    
    /*
    
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell
    {
        let cellFrame = CGRectMake(0, 0, self.tableView.frame.width, 52.0)
        var retCell = UITableViewCell(frame: cellFrame)
        
        var textLabel = UILabel(frame: CGRectMake(10.0, 0.0, UIScreen.mainScreen().bounds.width - 20.0, 52.0 - 4.0))
        textLabel.textColor = UIColor.blackColor()
        textLabel.text = apps[indexPath.row]
        retCell.addSubview(textLabel)
        
        self.tableView = tableView
        return retCell
    }
    
    func respondToSwipeGesture(gesture: UIGestureRecognizer) {
        
        if let swipeGesture = gesture as? UISwipeGestureRecognizer {
            
           // swiperight.numberOfTouchesRequired=1;
            var location = gesture.locationInView(self.tableView)
            var index = self.tableView.indexPathForRowAtPoint(location)
            //var cell = self.tableView.cellForRowAtIndexPath(tableView, index)
            var cell = self.tableView.cellForRowAtIndexPath(index!) as! UITableViewCell!
            
            
            switch swipeGesture.direction {
            case UISwipeGestureRecognizerDirection.Right:
                //var labelPosition = CGPointMake(self.swipeLabel.frame.origin.x + 100.0, self.swipeLabel.frame.origin.y)
               // self.swipeLabel.frame = CGRectMake( labelPosition.x , labelPosition.y , self.swipeLabel.frame.size.width, self.swipeLabel.frame.size.height)
                
                //markCellNo(cell)
                print("Swiped right")
            case UISwipeGestureRecognizerDirection.Left:
                              //  markCellYes(cell)
                print("Swiped left")
            default:
                break
            }
        }
    }
    
    
    func markCellNo(cell: UITableViewCell){
        var l = cell.subviews.last as! UILabel
        l.textColor = UIColor.grayColor()
        
    }
    func markCellYes(cell: UITableViewCell){
        var l = cell.subviews.last as! UILabel
        l.textColor = UIColor.greenColor()
    }
    
    func tableView(tableView: UITableView, heightForRowAtIndexPath indexPath: NSIndexPath) -> CGFloat
    {
        return 52.0
    }
    
    func tableView(tableView: UITableView, didSelectRowAtIndexPath indexPath: NSIndexPath)
    {
        tableView.deselectRowAtIndexPath(indexPath, animated: true)
    }
    
    func tableView(tableView: UITableView, heightForHeaderInSection section: Int) -> CGFloat
    {
        if section == 0
        {	return 64.0
        }
        
        return 32.0
    }
    
    func tableView(tableView: UITableView, viewForHeaderInSection section: Int) -> UIView?
    {
        let ret = UILabel(frame: CGRectMake(10, 0, self.tableView.frame.width - 20, 32.0))
        ret.backgroundColor = UIColor.clearColor()
        ret.text = "TV Shows"
        ret.textAlignment = NSTextAlignment.Center
        return ret
    }
    
    func tableView(tableView: UITableView, commitEditingStyle editingStyle: UITableViewCellEditingStyle, forRowAtIndexPath indexPath: NSIndexPath) {
        if editingStyle == .Delete {
            //objects.removeAtIndex(indexPath.row)
            tableView.deleteRowsAtIndexPaths([indexPath], withRowAnimation: .Fade)
        } else if editingStyle == .Insert {
            // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view.
        }
    }
    
    func tableView(tableView: UITableView, editActionsForRowAtIndexPath indexPath: NSIndexPath) -> [UITableViewRowAction]? {
        let positive = UITableViewRowAction(style: .Normal, title: "Yes") { action, index in
            print("more button tapped")
        }
        positive.backgroundColor = UIColor.lightGrayColor()
        /*
        let favorite = UITableViewRowAction(style: .Normal, title: "Favorite") { action, index in
            print("favorite button tapped")
        }
        favorite.backgroundColor = UIColor.orangeColor()
        
        let share = UITableViewRowAction(style: .Normal, title: "Share") { action, index in
            print("share button tapped")
        }
        share.backgroundColor = UIColor.blueColor()
        */
        //return [postive, favorite, more]
        return [positive]
    }
    
    func tableView(tableView: UITableView, canEditRowAtIndexPath indexPath: NSIndexPath) -> Bool {
        // the cells you would like the actions to appear needs to be editable
        return true
    }

*/

}

