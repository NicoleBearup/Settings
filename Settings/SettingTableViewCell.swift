//
//  SettingTableViewCell.swift
//  Settings
//
//  Created by Nicole Bearup on 7/24/17.
//  Copyright © 2017 Nicole Bearup. All rights reserved.
//

import UIKit

protocol SettingTableViewCellDelegate: class {
    func settingValueChanged(_ cell: SettingTableViewCell, selected: Bool)
}

class SettingTableViewCell: UITableViewCell {

    // MARK: IBOutlets
    
    // Switch
    @IBOutlet weak var settingSwitch: UISwitch!
    // Image
    @IBOutlet weak var iconImageView: UIImageView!
    // Label
    @IBOutlet weak var settingLabel: UILabel!
    
    // MARK:  Internal properties
    
    weak var delegate: SettingTableViewCellDelegate?
    
    // MARK: Lifecycle
    
    func updateViews(with setting: Setting?) {
        guard let setting = setting else { return }
        // Update label
        settingLabel.text = setting.name
        // Update image
        iconImageView.image = setting.image
        // Update switch
        settingSwitch.isOn = setting.isSet
        // Update backgroundColor
        backgroundColor = setting.isSet ? .yellow : .white
    }
    
    // MARK: Internal method
    
    @IBAction func settingSwitchValueChanged() {
        // When value changes, update the cell and the setting
        delegate?.settingValueChanged(self, selected: settingSwitch.isOn)
    }
}
