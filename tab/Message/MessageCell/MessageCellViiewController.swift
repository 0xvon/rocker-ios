//
//  MessageCellViiewController.swift
//  tab
//
//  Created by Masato TSUTSUMI on 2019/07/20.
//  Copyright © 2019 Masato TSUTSUMI. All rights reserved.
//

import UIKit

class MessageCellViewController: UITableViewCell {
    
    @IBOutlet weak var messageRoomImage: UIImageView!
    @IBOutlet weak var messageRoomName: UILabel!
    @IBOutlet weak var messageTopText: UITextView!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        
        messageRoomImage.image = UIImage(named: "avatar")
        messageRoomImage.layer.cornerRadius = 50
        messageRoomName.text = "MasatoTsutsumi"
        messageTopText.text = "どこ住み?てかLINEやってる?"
    }
}
