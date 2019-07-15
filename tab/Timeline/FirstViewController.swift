//
//  FirstViewController.swift
//  tab
//
//  Created by Masato TSUTSUMI on 2019/07/15.
//  Copyright © 2019 Masato TSUTSUMI. All rights reserved.
//

import UIKit

class FirstViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    var tweets: [String] = [
        "おちんちん",
        "あ",
        "い",
        "ええいｆじゃおｄｆｊ"
    ]
    @IBOutlet weak var timelineView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        timelineView.register(UITableViewCell.self, forCellReuseIdentifier: "cell")
        timelineView.delegate = self
        timelineView.dataSource = self
    }


}

extension FirstViewController {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return tweets.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell: UITableViewCell = timelineView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
        cell.textLabel!.text = tweets[indexPath.row]
        return cell
    }
    
    func tableView(_ tableView: UITableView, didDeselectRowAt indexPath: IndexPath) {
        performSegue(withIdentifier: "toTweetDetail", sender: nil)
    }
}
