//
//  SettingsTableViewController.swift
//  DanceDeets
//
//  Created by David Xiang on 10/4/14.
//  Copyright (c) 2014 david.xiang. All rights reserved.
//

import UIKit

class SettingsTableViewController: UITableViewController, UITextFieldDelegate, BasicSwitchTableCellDelegate {
    
    /*
    var showingCustomCityRow:Bool = false
    var locationToggleCell:BasicSwitchTableCell?
    var customCityCell:CustomCityTableViewCell?
    var appDelegate:AppDelegate?
    var mainFeedViewController:MainFeedViewController?
    
    var toggleIndexPath:NSIndexPath{
        return NSIndexPath(forRow: 0, inSection: 0)
    }
    var customCityIndexPath:NSIndexPath{
        return NSIndexPath(forRow: 1, inSection: 0)
    }

    // MARK: UIViewController
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.rowHeight = UITableViewAutomaticDimension
        
        // TODO: need to get some design direction on how to search across cities
        if (mainFeedViewController?.searchMode == MainFeedSearchMode.CustomCity){
            showingCustomCityRow = true
        }else{
            showingCustomCityRow = false
        }
    }
    
    override func viewWillAppear(animated: Bool) {
        super.viewWillAppear(animated)
    }
    
    override func viewDidAppear(animated: Bool) {
        super.viewDidAppear(animated)
    }

    // MARK: - UITableViewDataSource
    override func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        return 1
    }
    
    override func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        if(section == 0){
            var rowCount = 1
            
            if(showingCustomCityRow){
                rowCount += 1
            }
            return rowCount
        }
        else{
            return 0
        }
    }
    
    override func tableView(tableView: UITableView, canEditRowAtIndexPath indexPath: NSIndexPath) -> Bool {
        return false
    }
    
    override func tableView(tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        if (section == 0){
            return "SEARCH OPTIONS"
        }else{
            return ""
        }
    }
    
    override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        var cell:UITableViewCell? = UITableViewCell()
        if(indexPath.section == 0){
            if(indexPath.row == 0){
                locationToggleCell = tableView.dequeueReusableCellWithIdentifier("basicSwitchTableCell", forIndexPath: indexPath) as? BasicSwitchTableCell
                locationToggleCell?.delegate = self
                locationToggleCell?.titleLabel.text = "Use My Location"
                
                if(!showingCustomCityRow){
                    locationToggleCell?.titleLabel.textColor = UIColor.blackColor()
                    locationToggleCell?.toggleSwitch.setOn(true, animated: true)
                }else{
                    locationToggleCell?.titleLabel.textColor = UIColor.lightGrayColor()
                    locationToggleCell?.toggleSwitch.setOn(false, animated: true)
                }
                cell = locationToggleCell
            }else if(indexPath.row == 1){
                customCityCell = tableView.dequeueReusableCellWithIdentifier("customCityCell", forIndexPath:indexPath) as? CustomCityTableViewCell
                customCityCell?.inputTextField.delegate = self
                
                let customCityString:String? = NSUserDefaults.standardUserDefaults().stringForKey("customCity")
                customCityCell?.inputTextField.text = customCityString
                cell = customCityCell
            }
        }
        return cell!
    }
    
    // MARK: BasicSwitchTableCellDelegate
    func switchToggled(sender: UISwitch!) {
        if(sender == locationToggleCell?.toggleSwitch){
            if(sender.on){
                // Toggled to use current location
                showingCustomCityRow = false
                tableView.beginUpdates()
                tableView.reloadRowsAtIndexPaths([toggleIndexPath], withRowAnimation: UITableViewRowAnimation.Fade)
                tableView.deleteRowsAtIndexPaths([customCityIndexPath], withRowAnimation: UITableViewRowAnimation.Fade)
                tableView.endUpdates()
                
                NSUserDefaults.standardUserDefaults().setValue("", forKey: "customCity")
                NSUserDefaults.standardUserDefaults().synchronize()
                mainFeedViewController?.searchMode = MainFeedSearchMode.CurrentLocation
            }else{
                // Toggled to use custom city location
                showingCustomCityRow = true
                tableView.beginUpdates()
                tableView.reloadRowsAtIndexPaths([toggleIndexPath], withRowAnimation: UITableViewRowAnimation.Fade)
                tableView.insertRowsAtIndexPaths([customCityIndexPath], withRowAnimation: UITableViewRowAnimation.Fade)
                tableView.endUpdates()
                customCityCell?.inputTextField.becomeFirstResponder()
            }
            mainFeedViewController?.requiresRefresh = true
        }
    }
  
    // MARK: UITextFieldDelegate
    func textFieldShouldReturn(textField: UITextField) -> Bool {
        
        if(countElements(textField.text) == 0){
            // Closed keyboard with empty text field, assume using current location
            locationToggleCell?.toggleSwitch.setOn(true, animated: true)
            switchToggled(locationToggleCell?.toggleSwitch)
        }else{
            // Closed keyboard with some city
            let customCity:String = textField.text
            
            // Sync
            NSUserDefaults.standardUserDefaults().setValue(customCity, forKey: "customCity")
            NSUserDefaults.standardUserDefaults().synchronize()
            
            // Confirm
            let title = "Searching around " + customCity + " now!"
            let confirmAlert:UIAlertView = UIAlertView(title:title, message: nil, delegate: nil, cancelButtonTitle: "OK")
            confirmAlert.show()
        }
        textField.resignFirstResponder()
        mainFeedViewController?.requiresRefresh = true
        return true
    }
    

*/
}
