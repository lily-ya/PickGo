//
//  restaurantTableViewCell.swift
//  PickGo
//
//  Created by Lily on 3/20/18.
//  Copyright © 2018 Lily. All rights reserved.
//

import UIKit

class restaurantTableViewCell: UITableViewCell {
    var restaurant: Restaurant? = nil
    
    @IBOutlet weak var lblName: UILabel!
    @IBOutlet weak var lblRating: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
