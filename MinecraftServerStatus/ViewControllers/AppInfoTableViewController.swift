//
//  AppInfoTableViewController.swift
//  MinecraftServerStatus
//
//  Created by Tomer on 7/1/18.
//  Copyright © 2018 ShemeshApps. All rights reserved.
//

import UIKit
import SwiftRater

class AppInfoTableViewController: UITableViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
    }

    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        if (indexPath.section == 0) {
            UIApplication.shared.open(URL(string : "https://github.com/eclair4151/MinecraftServerStatusWidget")!, options: [:], completionHandler: { (status) in
                
            })
        } else if indexPath.section == 1{
            SwiftRater.rateApp()
        }
        
        tableView.deselectRow(at: indexPath, animated: true)
    }
}