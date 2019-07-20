//
//  ConcertCellViewController.swift
//  tab
//
//  Created by Masato TSUTSUMI on 2019/07/20.
//  Copyright © 2019 Masato TSUTSUMI. All rights reserved.
//

import UIKit

class ConcertCellViewController: UITableViewCell {
    
    @IBOutlet weak var concertYearLabel: UILabel!
    @IBOutlet weak var concertDayLabel: UILabel!
    @IBOutlet weak var concertStartTimeLabel: UILabel!
    @IBOutlet weak var concertNameText: UITextView!
    @IBOutlet weak var concertPlaceLabel: UILabel!
    @IBOutlet weak var concertStateLabel: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        
        
        concertNameText.textContainerInset = UIEdgeInsets.zero
        concertNameText.textColor = .purple
        concertNameText.textContainer.lineFragmentPadding = 0
    }
}
