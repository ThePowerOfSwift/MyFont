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
            settingsButton.backgroundColor = THEME_MAIN_COLOR
            settingsButton.setTitle(NSLocalizedString("settings.button.configure", comment: ""), for: .normal)
        }
    }
    
    @IBOutlet var titleLabel: UILabel! {
        didSet {
            titleLabel.text = NSLocalizedString("settings.title", comment: "Almost Set!")
            titleLabel.textColor = LABEL_MAIN_COLOR
        }
    }
    @IBOutlet var tutorialLabel1:UILabel! {
        didSet {
            tutorialLabel1.text = NSLocalizedString("settings.tutorial.step1", comment: "")
            tutorialLabel1.textColor = LABEL_MAIN_COLOR
        }
    }
    @IBOutlet var tutorialLabel2:UILabel! {
        didSet {
            tutorialLabel2.text = NSLocalizedString("settings.tutorial.step2", comment: "")
            tutorialLabel2.textColor = LABEL_MAIN_COLOR
        }
    }
    @IBOutlet var tutorialLabel3:UILabel! {
        didSet {
            tutorialLabel3.text = NSLocalizedString("settings.tutorial.step3", comment: "")
            tutorialLabel3.textColor = LABEL_MAIN_COLOR
        }
    }
    
    @IBOutlet var tutorialLabel4:UILabel! {
        didSet {
            tutorialLabel4.text = NSLocalizedString("settings.tutorial.step4", comment: "")
            tutorialLabel4.textColor = LABEL_MAIN_COLOR
        }
    }
    
    @IBOutlet var tutorialLabel5:UILabel! {
        didSet {
            tutorialLabel5.text = NSLocalizedString("settings.tutorial.step5", comment: "")
            tutorialLabel5.textColor = LABEL_MAIN_COLOR
        }
    }
    
    @IBOutlet var tutorialHint: UIImageView! {
        didSet {
            tutorialHint.layer.cornerRadius = 8
            tutorialHint.clipsToBounds = true
            tutorialHint.layer.borderWidth = 1
            tutorialHint.layer.borderColor = LABEL_MAIN_COLOR.cgColor
            tutorialHint.backgroundColor = THEME_MAIN_COLOR
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    @IBAction func onTapOpenSettings(_ sender: Any) {
        UIApplication.shared.open(URL(string:"App-Prefs:root=General&path=Keyboard/KEYBOARDS")!, options: [:], completionHandler: nil)
    }
}
