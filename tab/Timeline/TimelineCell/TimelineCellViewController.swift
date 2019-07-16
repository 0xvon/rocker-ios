//
//  TimelineCellViewController.swift
//  tab
//
//  Created by Masato TSUTSUMI on 2019/07/16.
//  Copyright © 2019 Masato TSUTSUMI. All rights reserved.
//

import UIKit

class TimelineCellViewController: UITableViewCell {
    
    
    @IBOutlet weak var avatar: UIImageView!
    @IBOutlet weak var displayName: UILabel!
    @IBOutlet weak var username: UILabel!
    @IBOutlet weak var tweet: UITextView!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        avatar.image = UIImage(named: "avatar")
        avatar.layer.cornerRadius = 32
        displayName.text = "Masato Tsutsumi"
        username.text = "@masatojames"
        username.textColor = .gray
        tweet.isUserInteractionEnabled = false
    }
    
//    override func setSelected(_ selected: Bool, animated: Bool) {
//        tweet.backgroundColor = .gray
//    }
    
    
}
