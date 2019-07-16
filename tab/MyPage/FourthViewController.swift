//
//  FourthViewController.swift
//  tab
//
//  Created by Masato TSUTSUMI on 2019/07/15.
//  Copyright © 2019 Masato TSUTSUMI. All rights reserved.
//

import UIKit


class FourthViewController: UIViewController {
    
    @IBOutlet weak var avatar: UIImageView!
    @IBOutlet weak var displayName: UILabel!
    @IBOutlet weak var username: UILabel!
    @IBOutlet weak var settingButton: UIButton!
    @IBOutlet weak var biography: UITextView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        avatar.image = UIImage(named: "avatar")
        avatar.layer.cornerRadius = 50
        displayName.text = "Masato Tsutsumi"
        username.text = "@masatojames"
        username.textColor = .gray
        biography.text = "ここはツイッター 孤独なダンスホール"
        settingButton.setTitleColor(.blue, for: .normal)
        settingButton.layer.cornerRadius = 10.0
        settingButton.layer.borderColor = UIColor.blue.cgColor
        settingButton.layer.borderWidth = 2
        settingButton.contentEdgeInsets = UIEdgeInsets(top: 0, left: 0, bottom: 10, right: 20)
        settingButton.titleEdgeInsets = UIEdgeInsets(top: 5, left: 10, bottom: -5, right: -10)
    }
    @IBAction func settingButtonTapped(_ sender: Any) {
        performSegue(withIdentifier: "toSetting", sender: nil)
    }
}
