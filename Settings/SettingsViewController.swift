//
//  SettingsViewController.swift
//  Settings
//
//  Created by Nicole Bearup on 7/24/17.
//  Copyright © 2017 Nicole Bearup. All rights reserved.
//

import UIKit

class SettingsViewController: UITableViewController {
    
    // MARK: Tableview DataSource

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return SettingsController.shared.numberOfSettings
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        // Create an instance of the cell, Custom Cell
        let cell = tableView.dequeueReusableCell(withIdentifier: "", for: indexPath) as? SettingTableViewCell
        // Find indexPath of what you want to display
        let setting = SettingsController.shared.setting(at: indexPath)
        
        cell?.updateViews(with: setting)
        
        return cell ?? UITableViewCell()
    }


}
