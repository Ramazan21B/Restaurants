//
//  RestaurantTableViewCell.swift
//  WorldRestourants
//
//  Created by Aitzhan Ramazan on 09.07.2024.
//

import UIKit
import SDWebImage
class RestaurantTableViewCell: UITableViewCell {

    @IBOutlet weak var nameLabel: UILabel!
   
    @IBOutlet weak var locationLabel: UILabel!
    
    @IBOutlet weak var streetLabel: UILabel!
    @IBOutlet weak var RestoImageView: UIImageView!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    func setData(restaurant: Restaurants){
        nameLabel.text = restaurant.name
        locationLabel.text = restaurant.location
        streetLabel.text = restaurant.street
        RestoImageView.sd_setImage(with: URL(string: restaurant.image), completed: nil)
    }
}
