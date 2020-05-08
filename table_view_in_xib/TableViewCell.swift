//
//  TableViewCell.swift
//  TableViewIntoXib
//
//  Created by jackercleaning on 2018/11/19.
//  Copyright © 2018 Charles Chien. All rights reserved.
//

import UIKit

class TableViewCell: UITableViewCell {
    @IBOutlet weak var button: UIButton!
    var onButtonClick: (() -> Void)? = nil
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    @IBAction func buttonClick(_ sender: Any) {
        if let onButtonClick = onButtonClick {
            onButtonClick()
        }
    }
    
}
