//
//  StoreDescriptionTableViewCell.swift
//  ShaRead
//
//  Created by martin on 2016/5/5.
//  Copyright © 2016年 Frainbow. All rights reserved.
//

import UIKit

class StoreDescriptionTableViewCell: UITableViewCell {

    @IBOutlet weak var storeNameLabel: UILabel!
    @IBOutlet weak var createDateLabel: UILabel!
    @IBOutlet weak var descriptionLabel: UILabel!

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
