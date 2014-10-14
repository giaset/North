//
//  MainTableViewController.swift
//  North
//
//  Created by Gianni Settino on 2014-10-13.
//  Copyright (c) 2014 Milton and Parc. All rights reserved.
//

import UIKit

class MainTableViewController: UITableViewController {
    
    let cellIdentifier = "cellIdentifier"
    
    var cloud: Firebase!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        tableView.registerClass(UITableViewCell.self, forCellReuseIdentifier: cellIdentifier)
        
        // Set up Firebase
        cloud = Firebase(url: "https://northsouth.firebaseio.com/devices/"+UIDevice.currentDevice().identifierForVendor.UUIDString)
        
        cloud.observeEventType(FEventType.ChildAdded, withBlock: {
            (snap: FDataSnapshot!) -> Void in
            // ToDo: get all at once, ordered by score
            println(snap.name)
            println(snap.value)
        })
    }
    
    override func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        return 1
    }
    
    override func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 1
    }
    
    override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        return tableView.dequeueReusableCellWithIdentifier(cellIdentifier, forIndexPath: indexPath) as UITableViewCell
    }
    
}
