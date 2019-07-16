//
//  TimelineCellViewController.swift
//  tab
//
//  Created by Masato TSUTSUMI on 2019/07/16.
//  Copyright © 2019 Masato TSUTSUMI. All rights reserved.
//

import UIKit

class TimelineCellViewController: UITableViewCell {
    
    var retweet: Bool = false
    var like: Bool = false
    
    
    @IBOutlet weak var avatar: UIImageView!
    @IBOutlet weak var displayName: UILabel!
    @IBOutlet weak var username: UILabel!
    @IBOutlet weak var tweet: UITextView!
    @IBOutlet weak var commentButton: UIButton!
    @IBOutlet weak var retweetButton: UIButton!
    @IBOutlet weak var likeButton: UIButton!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        avatar.image = UIImage(named: "avatar")
        avatar.layer.cornerRadius = 32
        displayName.text = "Masato Tsutsumi"
        username.text = "@masatojames"
        username.textColor = .gray
        tweet.isUserInteractionEnabled = false
        buttonColor(isTrue: retweet, button: retweetButton)
        buttonColor(isTrue: like, button: likeButton)
    }
    
    func buttonColor(isTrue: Bool, button: UIButton) {
        if isTrue == true {
            button.tintColor = .red
        } else {
            button.tintColor = .black
        }
    }
    
//    override func setSelected(_ selected: Bool, animated: Bool) {
//        tweet.backgroundColor = .gray
//    }
    
    @IBAction func commentButtonTapped(_ sender: Any) {
        print("hello")
    }
    
    @IBAction func retweetButtonTapped(_ sender: Any) {
        retweet.toggle()
        buttonColor(isTrue: retweet, button: retweetButton)
    }
    @IBAction func likeButtonTapped(_ sender: Any) {
        like.toggle()
        buttonColor(isTrue: like, button: likeButton)
    }
    
    
}
