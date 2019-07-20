//
//  RightBalloonViewController.swift
//  tab
//
//  Created by Masato TSUTSUMI on 2019/07/20.
//  Copyright © 2019 Masato TSUTSUMI. All rights reserved.
//

import UIKit

class RightBalloonViewController: UITableViewCell {
    
    
    @IBOutlet weak var rightBalloonText: UITextView!
    @IBOutlet weak var textSentAt: UILabel!
    @IBOutlet weak var isRead: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        rightBalloonText.text = "どこ住み?てかLINEやってる?"
        rightBalloonText.layer.borderColor = UIColor.blue.cgColor
        rightBalloonText.layer.borderWidth = 2
        rightBalloonText.layer.cornerRadius = 10
        textSentAt.text = "10:00AM"
        textSentAt.textColor = .blue
        isRead.text = "既読"
        isRead.tintColor = .blue
    }
    
}
