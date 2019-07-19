//
//  ArtistCellViewController.swift
//  tab
//
//  Created by Masato TSUTSUMI on 2019/07/19.
//  Copyright © 2019 Masato TSUTSUMI. All rights reserved.
//

import UIKit

class ArtistCellViewController: UITableViewCell {
    
    @IBOutlet weak var avatar: UIImageView!
    @IBOutlet weak var artistNameLabel: UILabel!
    @IBOutlet weak var concertInformationLabel: UILabel!
    @IBOutlet weak var newsInformationLabel: UILabel!
    @IBOutlet weak var likeButton: UIButton!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        avatar.image = UIImage(named: "myfirststory")
        avatar.layer.cornerRadius = 0
        artistNameLabel.text = "MY FIRST STORY"
        concertInformationLabel.text = "公演5件"
        newsInformationLabel.text = "ニュース100件"
        likeButton.setTitle("like", for: .normal)
    }
    @IBAction func likeButtonTapped(_ sender: Any) {
        print("hello")
    }
}
