//
//  CricketCollectionViewCell.swift
//  Dream11
//
//  Created by Prince Desai on 22/02/23.
//

import UIKit

class CricketCollectionViewCell: UICollectionViewCell {

    @IBOutlet weak var imege: UIImageView!
    @IBOutlet weak var imege2: UIImageView!
  
    @IBOutlet weak var teamName: UILabel!
    @IBOutlet weak var vsTeam: UILabel!
    @IBOutlet weak var cricketCupName: UILabel!
    @IBOutlet weak var notificationIcone: UIImageView!
    @IBOutlet weak var showLbl: UILabel!
   
    @IBOutlet weak var teamFullName2: UILabel!

    @IBOutlet weak var teamFullName: UILabel!
    
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        imege.layer.cornerRadius = 17.5
        imege.layer.borderWidth = 1
        imege2.layer.cornerRadius = 17.5
        imege2.layer.borderWidth = 1
        
    }

}
