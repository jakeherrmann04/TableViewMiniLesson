//
//  ViewController.swift
//  TableViewMiniLesson
//
//  Created by Jake Herrmann on 10/11/15.
//  Copyright © 2015 Jake Herrmann. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
    
    var daysOfWeek = ["monday", "tuesday", "wednesday", "thursday", "friday", "saturday", "sunday"]

    @IBOutlet var tableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCellWithIdentifier("cellID") as UITableViewCell?

        cell?.textLabel?.text = daysOfWeek[indexPath.row]
        
        return cell!
        
    }
    
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        return daysOfWeek.count
        
    }
    
    func tableView(tableView: UITableView, heightForRowAtIndexPath indexPath: NSIndexPath) -> CGFloat {
        
        return 135
        
    }
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        
        if segue.identifier == "detailSegue"{
        
            let detailViewController  = segue.destinationViewController as! DetailViewController
            let indexPath : NSIndexPath! = tableView.indexPathForSelectedRow
            detailViewController.titleString = daysOfWeek[indexPath.row]
            


        }
        
        
    }
    
    

}

