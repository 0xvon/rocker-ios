//
//  SecondViewController.swift
//  tab
//
//  Created by Masato TSUTSUMI on 2019/07/15.
//  Copyright © 2019 Masato TSUTSUMI. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController, UITableViewDataSource, UITableViewDelegate, UISearchBarDelegate {
    
    let artists: [Artist] = []
    
    let results: [Artist] = []

    @IBOutlet weak var searchBar: UISearchBar!
    @IBOutlet weak var artistTableView: UITableView!
    override func viewDidLoad() {
        super.viewDidLoad()
        
        searchBar.delegate = self
        searchBar.showsCancelButton = false
        searchBar.showsSearchResultsButton = false
        searchBar.enablesReturnKeyAutomatically = false
        
        artistTableView.register(UITableViewCell.self, forCellReuseIdentifier: "cell")
        artistTableView.delegate = self
        artistTableView.dataSource = self
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
}

extension SecondViewController {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        if artists.count == 0 {
            return 15
        }
        if searchBar.text != "" {
            return results.count
        } else {
            return artists.count
        }
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath as IndexPath)
        if artists.count == 0 {
            cell.textLabel?.text = "ははははは"
            return cell
        }
        if searchBar.text != "" {
            cell.textLabel?.text =  results[indexPath.row].name
        } else {
            cell.textLabel?.text = artists[indexPath.row].name
            
        }
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        performSegue(withIdentifier: "toArtistDetail", sender: nil)
    }
    
    func searchBarCancelButtonClicked(_ searchBar: UISearchBar) {
        searchBar.showsCancelButton = false
        self.view.endEditing(true)
        searchBar.text = ""
        self.artistTableView.reloadData()
    }
    
    func searchBarTextDidBeginEditing(_ searchBar: UISearchBar) -> Bool {
        searchBar.showsCancelButton = true
        return true
    }
    
    func searchBarSearchButtonClicked(_ searchBar: UISearchBar) {
        self.view.endEditing(true)
        searchBar.showsCancelButton = false
        // TODO: display result method
    }
}
