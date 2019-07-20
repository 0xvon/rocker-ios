//
//  ConcertViewController.swift
//  tab
//
//  Created by Masato TSUTSUMI on 2019/07/19.
//  Copyright © 2019 Masato TSUTSUMI. All rights reserved.
//

import UIKit


class ConcertViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {

    
    @IBOutlet weak var concertTableView: UITableView!
    override func viewDidLoad() {
        super.viewDidLoad()
        
        concertTableView.delegate = self
        concertTableView.dataSource = self
        concertTableView.register(UINib(nibName: "ConcertCell", bundle: nil), forCellReuseIdentifier: "ConcertCell")
        concertTableView.contentInset = UIEdgeInsets(top: 0, left: 0, bottom: 0, right: 0)
    }
}

extension ConcertViewController {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 100
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell: UITableViewCell = tableView.dequeueReusableCell(withIdentifier: "ConcertCell", for: indexPath) as! ConcertCellViewController
        return cell
    }
    
//    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
//        <#code#>
//    }
}
