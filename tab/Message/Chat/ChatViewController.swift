//
//  ChatViewController.swift
//  tab
//
//  Created by Masato TSUTSUMI on 2019/07/15.
//  Copyright © 2019 Masato TSUTSUMI. All rights reserved.
//

import UIKit

class ChatViewController: UIViewController {
    
    @IBOutlet weak var chatContentsTableView: UITableView!
    @IBOutlet weak var textField: UITextField!
    @IBOutlet weak var submitButton: UIButton!
    @IBOutlet weak var messageViewConstraint: NSLayoutConstraint!
    @IBOutlet weak var chatScrollView: UIScrollView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        textField.text = ""
        submitButton.setTitle("送信", for: .normal)
        chatContentsTableView.delegate = self
        chatContentsTableView.dataSource = self
        chatScrollView.delegate = self
        chatContentsTableView.register(UINib(nibName: "RightBalloon", bundle: nil), forCellReuseIdentifier: "RightBalloon")
    }
    
    override func viewDidLayoutSubviews() {
        chatContentsTableView.contentOffset.y = 4040
    }
    
    @IBAction func submitButtonTapped(_ sender: Any) {
    }
}

extension ChatViewController: UITableViewDataSource, UITableViewDelegate, UIScrollViewDelegate {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 100
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell: UITableViewCell = tableView.dequeueReusableCell(withIdentifier: "RightBalloon") as! RightBalloonViewController
        return cell
    }
    
    func scrollViewDidScroll(_ scrollView: UIScrollView) {

    }
    
}
