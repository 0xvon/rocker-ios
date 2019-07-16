//
//  TweetDetailViewController.swift
//  tab
//
//  Created by Masato TSUTSUMI on 2019/07/15.
//  Copyright © 2019 Masato TSUTSUMI. All rights reserved.
//

import UIKit


class TweetDetalViewController: UIViewController {
    
//    let tweet: Tweet
    var like: Bool = false
    var retweet: Bool = false
    
    @IBOutlet weak var avatar: UIImageView!
    @IBOutlet weak var displayName: UILabel!
    @IBOutlet weak var username: UILabel!
    @IBOutlet weak var actionButton: UIButton!
    @IBOutlet weak var tweet: UITextView!
    @IBOutlet weak var commentButton: UIButton!
    @IBOutlet weak var retweetButton: UIButton!
    @IBOutlet weak var likeButton: UIButton!
    @IBOutlet weak var shareButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        avatar.image = UIImage(named: "avatar")
        avatar.layer.cornerRadius = 50
        displayName.text = "Masato Tsutsumi"
        username.text = "@masatojames"
        username.textColor = .gray
        buttonColor(isTrue: retweet, button: retweetButton)
        buttonColor(isTrue: like, button: likeButton)
    }
    
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
    
    @IBAction func shareButtonTapped(_ sender: Any) {
        print("good bye")
    }
    
    func buttonColor(isTrue: Bool, button: UIButton) {
        if isTrue == true {
            button.tintColor = .red
        } else {
            button.tintColor = .black
        }
    }
}
