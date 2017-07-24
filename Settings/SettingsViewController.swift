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
        let cell = tableView.dequeueReusableCell(withIdentifier: "SettingCell", for: indexPath) as? SettingTableViewCell
        // Find indexPath of what you want to display
        let setting = SettingsController.shared.setting(at: indexPath)
        cell?.updateViews(with: setting)
        cell?.delegate = self
        
        return cell ?? UITableViewCell()
    }


}

// MARK: SettingTableViewCellDelegate

extension SettingsViewController: SettingTableViewCellDelegate {
    
    func settingValueChanged(_ cell: SettingTableViewCell, selected: Bool) {
        // change isSet on setting
        // which setting to change?
        guard let cellIndexPath = tableView.indexPath(for: cell) else { return }
        let setting = SettingsController.shared.setting(at: cellIndexPath)
        tableView.beginUpdates()
        setting.isSet = selected
        tableView.reloadRows(at: [cellIndexPath], with: .automatic)
        tableView.endUpdates()
    }
    
}



















