//
//  CartTableViewCell.swift
//  CoffeeProjecttt
//
//  Created by Mayar Adel on 8/15/22.
//

import UIKit

class CartTableViewCell: UITableViewCell {
    
    @IBOutlet weak var coffeeImage: UIImageView!
    
    @IBOutlet weak var coffeeName: UILabel!
    
    @IBOutlet weak var coffeeCount: UILabel!
    
    
    @IBOutlet weak var coffeePrice: UILabel!
    
    
    @IBOutlet weak var plus: UIButton!
    
    
    @IBOutlet weak var minus: UIButton!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
