//
//  ArtistsViewController.swift
//  tab
//
//  Created by Masato TSUTSUMI on 2019/07/17.
//  Copyright © 2019 Masato TSUTSUMI. All rights reserved.
//

import UIKit

class ArtistsViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
    
    @IBOutlet weak var artistsTableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        artistsTableView.register(UINib(nibName: "ArtistCell", bundle: nil), forCellReuseIdentifier: "ArtistCell")
        artistsTableView.delegate = self
        artistsTableView.dataSource = self
        artistsTableView.contentInset = UIEdgeInsets(top: 0, left: 0, bottom: 0, right: 0)
    }
}

extension ArtistsViewController {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 2
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell: UITableViewCell = tableView.dequeueReusableCell(withIdentifier: "ArtistCell", for: indexPath) as! ArtistCellViewController
        return cell
    }
    
    func tableView(_ tableView: UITableView, didDeselectRowAt indexPath: IndexPath) {
        performSegue(withIdentifier: "toArtistDetail", sender: nil)
    }
}
