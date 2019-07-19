//
//  FourthViewController.swift
//  tab
//
//  Created by Masato TSUTSUMI on 2019/07/15.
//  Copyright © 2019 Masato TSUTSUMI. All rights reserved.
//

import UIKit


class FourthViewController: UIViewController, UIScrollViewDelegate {
    let display: CGRect = UIScreen.main.bounds
    
    @IBOutlet weak var avatar: UIImageView!
    @IBOutlet weak var displayName: UILabel!
    @IBOutlet weak var username: UILabel!
    @IBOutlet weak var settingButton: UIButton!
    @IBOutlet weak var biography: UITextView!
    
    
    @IBOutlet weak var tweetsContainerView: UIView!
    @IBOutlet weak var ArtistsContainerView: UIView!
    @IBOutlet weak var MediaContainerView: UIView!
    @IBOutlet weak var LikesContainerView: UIView!
    @IBOutlet weak var horizontalScrollView: UIScrollView!
    @IBOutlet weak var barUnderLine: UIView!
    
    @IBOutlet weak var barLefeConstraint: NSLayoutConstraint!
    @IBOutlet weak var headerTopConstraint: NSLayoutConstraint!
    @IBOutlet weak var tweetsWidthConstraint: NSLayoutConstraint!
    @IBOutlet weak var artistsWidthConstraint: NSLayoutConstraint!
    @IBOutlet weak var mediaWidthConstraint: NSLayoutConstraint!
    @IBOutlet weak var likesWidthConstraint: NSLayoutConstraint!
    @IBOutlet weak var wiewWidthConstraint: NSLayoutConstraint!
    @IBOutlet weak var barUnderLineWidthConstraint: NSLayoutConstraint!
    
    @IBOutlet weak var tweetButton: UIButton!
    @IBOutlet weak var artistsButton: UIButton!
    @IBOutlet weak var mediaButton: UIButton!
    @IBOutlet weak var likesButton: UIButton!
    
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
        
        horizontalScrollView.delegate = self
        
        tweetsWidthConstraint.constant = display.size.width
        artistsWidthConstraint.constant = display.size.width
        mediaWidthConstraint.constant = display.size.width
        likesWidthConstraint.constant = display.size.width
        wiewWidthConstraint.constant = display.size.width * 4
        barUnderLineWidthConstraint.constant = display.size.width / 4
        
        tabButton()
    }
    @IBAction func settingButtonTapped(_ sender: Any) {
        performSegue(withIdentifier: "toSetting", sender: nil)
    }
    
    @IBAction func tweetTabTapped(_ sender: Any) {
        horizontalScrollView.contentOffset.x = 0
        horizontalScrollView.contentOffset.y = 0
        barLefeConstraint.constant = horizontalScrollView.contentOffset.x / 4
        tabButton()
    }
    
    @IBAction func artistTabTapped(_ sender: Any) {
        horizontalScrollView.contentOffset.x = 414
        horizontalScrollView.contentOffset.y = 0
        barLefeConstraint.constant = horizontalScrollView.contentOffset.x / 4
        tabButton()
    }
    
    @IBAction func mediaTabTapped(_ sender: Any) {
        horizontalScrollView.contentOffset.x = 828
        horizontalScrollView.contentOffset.y = 0
        barLefeConstraint.constant = horizontalScrollView.contentOffset.x / 4
        tabButton()
    }
    
    @IBAction func likeTabTapped(_ sender: Any) {
        horizontalScrollView.contentOffset.x = 1242
        horizontalScrollView.contentOffset.y = 0
        barLefeConstraint.constant = horizontalScrollView.contentOffset.x / 4
        tabButton()
    }
    
    func tabButton() {
        if horizontalScrollView.contentOffset.x / 4 < 47 {
            tweetButton.setTitleColor(.red, for: .normal)
            artistsButton.setTitleColor(.black, for: .normal)
            mediaButton.setTitleColor(.black, for: .normal)
            likesButton.setTitleColor(.black, for: .normal)
        } else if horizontalScrollView.contentOffset.x / 4 < 157 {
            tweetButton.setTitleColor(.black, for: .normal)
            artistsButton.setTitleColor(.red, for: .normal)
            mediaButton.setTitleColor(.black, for: .normal)
            likesButton.setTitleColor(.black, for: .normal)
        } else if horizontalScrollView.contentOffset.x / 4 < 260 {
            tweetButton.setTitleColor(.black, for: .normal)
            artistsButton.setTitleColor(.black, for: .normal)
            mediaButton.setTitleColor(.red, for: .normal)
            likesButton.setTitleColor(.black, for: .normal)
        } else {
            tweetButton.setTitleColor(.black, for: .normal)
            artistsButton.setTitleColor(.black, for: .normal)
            mediaButton.setTitleColor(.black, for: .normal)
            likesButton.setTitleColor(.red, for: .normal)
        }
    }
    
}

extension FourthViewController {
    func scrollViewDidScroll(_ scrollView: UIScrollView) {
        if scrollView == self.horizontalScrollView {
            barLefeConstraint.constant = scrollView.contentOffset.x / 4
            tabButton()
        } else {
            print(scrollView.contentOffset)
            headerTopConstraint.constant = max(-(scrollView.contentOffset.y), +50)
        }
    }
    
    
}
