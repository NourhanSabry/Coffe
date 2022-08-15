//
//  HomeTableViewCell.swift
//  CoffeeProjecttt
//
//  Created by Noha Naguib on 14/08/2022.
//

import UIKit

class HomeTableViewCell: UITableViewCell {

    @IBOutlet weak var imgCoffeePhoto: UIImageView!
    @IBOutlet weak var LabelCoffeeName: UILabel!
    @IBOutlet weak var buttonNext: UIButton!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        
    }
    func setupCell(photo: UIImage, name: String){
        
        imgCoffeePhoto.image = photo
        LabelCoffeeName.text = name
    }
    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
