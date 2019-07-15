//
//  ThirdViewController.swift
//  tab
//
//  Created by Masato TSUTSUMI on 2019/07/15.
//  Copyright © 2019 Masato TSUTSUMI. All rights reserved.
//

import UIKit

class ThirdViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    @IBOutlet weak var messageTableView: UITableView!
    override func viewDidLoad() {
        super.viewDidLoad()
        
        messageTableView.register(UITableViewCell.self, forCellReuseIdentifier: "cell")
        messageTableView.delegate = self
        messageTableView.dataSource = self
    }
}

extension ThirdViewController {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 100
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath as IndexPath)
        cell.textLabel?.text =  "こんにちは！どこ住み？てかLINEやってる？"
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        performSegue(withIdentifier: "toChat", sender: nil)
    }
}
