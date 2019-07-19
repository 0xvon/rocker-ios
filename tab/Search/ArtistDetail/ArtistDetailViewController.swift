//
//  ArtistDetailViewController.swift
//  tab
//
//  Created by Masato TSUTSUMI on 2019/07/15.
//  Copyright © 2019 Masato TSUTSUMI. All rights reserved.
//

import UIKit

class ArtistDetailViewController: UIViewController, UIScrollViewDelegate {
    
    let display: CGRect = UIScreen.main.bounds
    @IBOutlet weak var artistImageView: UIImageView!
    @IBOutlet weak var artistNameLabel: UILabel!
    @IBOutlet weak var artistMemberLabel: UILabel!
    @IBOutlet weak var concertTab: UIButton!
    @IBOutlet weak var newsTab: UIButton!
    @IBOutlet weak var concertContainerView: UIView!
    @IBOutlet weak var newsContainerView: UIView!
    @IBOutlet weak var horizontalScrollView: UIScrollView!
    @IBOutlet weak var underLineView: UIView!
    
    @IBOutlet weak var viewWidthConstraint: NSLayoutConstraint!
    @IBOutlet weak var underLineWidthConstraint: NSLayoutConstraint!
    @IBOutlet weak var newsWidthConstraint: NSLayoutConstraint!
    @IBOutlet weak var headerTopCOnstraint: NSLayoutConstraint!
    @IBOutlet weak var underLineLeftConstraint: NSLayoutConstraint!
    @IBOutlet weak var concertWidthConstraint: NSLayoutConstraint!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        artistImageView.image = UIImage(named: "myfirststory")
        artistNameLabel.text = "MY FIRST STORY"
        artistMemberLabel.text = "Hiro, Kid'z, Teru, Nob"
        
        horizontalScrollView.delegate = self
        concertWidthConstraint.constant = display.size.width
        newsWidthConstraint.constant = display.size.width
        viewWidthConstraint.constant = display.size.width * 2
        underLineWidthConstraint.constant = display.size.width / 2
        tabButton()
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
    @IBAction func contentTabTapped(_ sender: Any) {
        horizontalScrollView.contentOffset.x = 0
        underLineLeftConstraint.constant = horizontalScrollView.contentOffset.x / 2
        tabButton()
        
    }
    @IBAction func newsTabTapped(_ sender: Any) {
        horizontalScrollView.contentOffset.x = 414
        underLineLeftConstraint.constant = horizontalScrollView.contentOffset.x / 2
        tabButton()
    }
    
    func tabButton() {
        if horizontalScrollView.contentOffset.x / 2 < 110 {
            concertTab.setTitleColor(.red, for: .normal)
            newsTab.setTitleColor(.black, for: .normal)
        } else {
            concertTab.setTitleColor(.black, for: .normal)
            newsTab.setTitleColor(.red, for: .normal)
        }
    }
    
    func scrollViewDidScroll(_ scrollView: UIScrollView) {
        if scrollView == self.horizontalScrollView {
            underLineLeftConstraint.constant = scrollView.contentOffset.x / 2
            tabButton()
        } else {
            print(scrollView.contentOffset)
            headerTopCOnstraint.constant = max(-(scrollView.contentOffset.y), +50)
        }
    }
}
