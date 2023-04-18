//
//  KabbadiCollectionViewCell.swift
//  Dream11
//
//  Created by Prince Desai on 14/03/23.
//

import UIKit

class KabbadiCollectionViewCell: UICollectionViewCell {

    @IBOutlet weak var imege: UIImageView!
    @IBOutlet weak var imege2: UIImageView!

    @IBOutlet weak var teamName: UILabel!
    @IBOutlet weak var vsTeam: UILabel!
    @IBOutlet weak var FootBallStadiyamName: UILabel!
    @IBOutlet weak var notificationIcone: UIImageView!
    @IBOutlet weak var showLbl: UILabel!

    @IBOutlet weak var teamFullName2: UILabel!
    @IBOutlet weak var teamFullName: UILabel!



    override func awakeFromNib() {
        super.awakeFromNib()
        imege.layer.cornerRadius = 17.5
        imege2.layer.cornerRadius = 17.5
    }


}
