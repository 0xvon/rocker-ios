//
//  FirstViewController.swift
//  tab
//
//  Created by Masato TSUTSUMI on 2019/07/15.
//  Copyright © 2019 Masato TSUTSUMI. All rights reserved.
//

import UIKit

class FirstViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    
    @IBOutlet weak var tweetButton: UIButton!
    @IBOutlet weak var notificationButton: UIButton!
    @IBOutlet weak var timelineView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        timelineView.register(UINib(nibName: "TimelineCell", bundle: nil), forCellReuseIdentifier: "TimelineCell")
        timelineView.delegate = self
        timelineView.dataSource = self
        
        tweetButton.setTitle("tweet", for: .normal)
        notificationButton.setTitle("通知", for: .normal)
        
    }
    
    @IBAction func notificationButtonTapped(_ sender: Any) {
        performSegue(withIdentifier: "toNotification", sender: nil)
    }
    @IBAction func tweetButtonTapped(_ sender: Any) {
        performSegue(withIdentifier: "toNewTweet", sender: nil)
    }
    

}

extension FirstViewController {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 100
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell: UITableViewCell = tableView.dequeueReusableCell(withIdentifier: "TimelineCell", for: indexPath) as! TimelineCellViewController
        return cell
    }
    
    func tableView(_ tableView: UITableView, didDeselectRowAt indexPath: IndexPath) {
        let cell: UITableViewCell = tableView.dequeueReusableCell(withIdentifier: "TimelineCell", for: indexPath) as! TimelineCellViewController
//        cell.layer.opacity = 1
//        cell.backgroundColor = .white
//        cell.textLabel?.layer.backgroundColor = UIColor.gray.cgColor
        cell.textLabel?.backgroundColor = .clear
        performSegue(withIdentifier: "toTweetDetail", sender: nil)
    }
}
