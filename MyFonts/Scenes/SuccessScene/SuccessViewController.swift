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
    
    @IBOutlet var titleLabel: UILabel! {
        didSet {
            titleLabel.text = NSLocalizedString("settings.title", comment: "Almost Set!")
        }
    }
    @IBOutlet var tutorialLabel1:UILabel! {
        didSet {
            tutorialLabel1.text = NSLocalizedString("settings.tutorial.step1", comment: "")
        }
    }
    @IBOutlet var tutorialLabel2:UILabel! {
        didSet {
            tutorialLabel2.text = NSLocalizedString("settings.tutorial.step2", comment: "")
        }
    }
    @IBOutlet var tutorialLabel3:UILabel! {
        didSet {
            tutorialLabel3.text = NSLocalizedString("settings.tutorial.step3", comment: "")
        }
    }
    
    @IBOutlet var tutorialLabel4:UILabel! {
        didSet {
            tutorialLabel4.text = NSLocalizedString("settings.tutorial.step4", comment: "")
        }
    }
    
    @IBOutlet var tutorialLabel5:UILabel! {
        didSet {
            tutorialLabel5.text = NSLocalizedString("settings.tutorial.step5", comment: "")
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    @IBAction func onTapOpenSettings(_ sender: Any) {
        UIApplication.shared.open(URL(string:"App-Prefs:root=General&path=Keyboard/KEYBOARDS")!, options: [:], completionHandler: nil)
    }
}
