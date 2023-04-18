//
//  FeedTableViewCell.swift
//  Dream11
//
//  Created by Prince Desai on 27/03/23.
//

import UIKit

class FeedTableViewCell: UITableViewCell {

    @IBOutlet weak var labelOne: UILabel!
    @IBOutlet weak var labelTwo: UILabel!
    @IBOutlet weak var firstImageView: UIImageView!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

    }
    
}
