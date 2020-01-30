//
//  InitialVC.swift
//  MyFonts
//
//  Created by Irakli on 1/27/20.
//  Copyright © 2020 Irakli. All rights reserved.
//

import Foundation
import UIKit

class SuccessViewController: UIViewController {
    
    
    @IBOutlet var settingsButton: UIButton! {
        didSet {
            settingsButton.layer.cornerRadius = settingsButton.frame.height/2
            settingsButton.clipsToBounds = true
            settingsButton.backgroundColor = BUTTON_MAIN_COLOR
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    @IBAction func onTapOpenSettings(_ sender: Any) {
        UIApplication.shared.open(URL(string:"App-Prefs:root=General&path=Keyboard/KEYBOARDS")!, options: [:], completionHandler: nil)

    }
    
}
