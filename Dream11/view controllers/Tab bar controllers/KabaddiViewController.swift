//
//  KabaddiViewController.swift
//  Dream11
//
//  Created by Prince Desai on 16/02/23.
//

import UIKit

struct Kabaddi {
    var cupName: String
    var teamName: String
    var vsTeam: String
    var teamFullname: String
    var teamFullname2: String
}

class KabaddiViewController: UIViewController {

    @IBOutlet weak var KabaddiViewController: UICollectionView!

    var arrKabaddiTeam: [Kabaddi] = []
    var arrKabaddiImag: [String] = ["kb1", "kb2", "kb3", "kb4", "kb5", "kb6", "kb7", "kb8", "kb9", "kb10","kb11", "kb12","kb1", "kb2", "kb3", "kb4", "kb5", "kb6", "kb7", "kb8", "kb9", "kb10","kb11", "kb12"]
    var arrKabaddiImag1: [String] = ["kb1", "kb2", "kb3", "kb4", "kb5", "kb6", "kb7", "kb8", "kb9", "kb10","kb11", "kb12","kb1", "kb2", "kb3", "kb4", "kb5", "kb6", "kb7", "kb8", "kb9", "kb10","kb11", "kb12"].reversed()

    override func viewDidLoad() {
        super.viewDidLoad()
        setup()
    }

    private func setup(){
        showTeamDetail()
        configerCollectionView()
    }
    private func showTeamDetail(){
        let kb1: Kabaddi = Kabaddi(cupName: "", teamName: "SC", vsTeam: "MSK",teamFullname: "Superiror Club",teamFullname2: "Masaka KC")
        let kb2: Kabaddi = Kabaddi(cupName: "2", teamName: "NIL", vsTeam: "KIT",teamFullname: "Nile KC",teamFullname2: "Kitara KC")
        let kb3: Kabaddi = Kabaddi(cupName: "3", teamName: "RAF", vsTeam: "COL",teamFullname: "Random Fighter KC",teamFullname2: "Colothians KC")
        let kb4: Kabaddi = Kabaddi(cupName: "4", teamName: "SHA", vsTeam: "JSB",teamFullname: "Sharks KC",teamFullname2: "Jakana Supar Bullets Kc")
        let kb5: Kabaddi = Kabaddi(cupName: "5", teamName: "WAJ", vsTeam: "KPL",teamFullname: "WAR Jaguars KC",teamFullname2: "Inter Milan")
        let kb6: Kabaddi = Kabaddi(cupName: "6", teamName: "JIN", vsTeam: "EAG-W",teamFullname: "Jinja KC",teamFullname2: "Eaglets Women")
        let kb7: Kabaddi = Kabaddi(cupName: "7", teamName: "KKC-W", vsTeam: "RAF",teamFullname: "Kkungu Club Women",teamFullname2: "Random Fighter KC")
        let kb8: Kabaddi = Kabaddi(cupName: "8", teamName: "KPL", vsTeam: "WAJ",teamFullname: "Philadelphila Union",teamFullname2: "War Jaguars KC")
        let kb9: Kabaddi = Kabaddi(cupName: "9", teamName: "MSK", vsTeam: "SHA",teamFullname: "Masaka KC",teamFullname2: "Sharks KC")
        let kb10: Kabaddi = Kabaddi(cupName: "10", teamName: "TIT-W", vsTeam: "HUS-W",teamFullname: "Titanic Women",teamFullname2: "Hustlers Women")
        let kb11: Kabaddi = Kabaddi(cupName: "11", teamName: "KIT", vsTeam: "STP",teamFullname: "Kitara KC",teamFullname2: "Star Pirates")
        let kb12: Kabaddi = Kabaddi(cupName: "12", teamName: "ANG-W", vsTeam: "KKC-W",teamFullname: "War Jaguars KC",teamFullname2: "Kkungu Club Women")

        arrKabaddiTeam = [kb1,kb2,kb3,kb4,kb5,kb6,kb7,kb8,kb9,kb10,kb11,kb12,kb1,kb2,kb3,kb4,kb5,kb6,kb7,kb8,kb9,kb10,kb11,kb12]
    }
    
   

    private func configerCollectionView(){
        let nibFile: UINib = UINib(nibName: "KabbadiCollectionViewCell", bundle: nil)
        KabaddiViewController.register(nibFile, forCellWithReuseIdentifier: "KabbadiCollectionViewCell")
    }
}



extension KabaddiViewController: UICollectionViewDelegate, UICollectionViewDataSource{


    func numberOfSections(in collectionView: UICollectionView) -> Int {
        return 1
    }

    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return arrKabaddiTeam.count
    }

    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {

        let cell: KabbadiCollectionViewCell = collectionView.dequeueReusableCell(withReuseIdentifier: "KabbadiCollectionViewCell", for: indexPath) as! KabbadiCollectionViewCell
        let footBall = arrKabaddiTeam[indexPath.row]


        cell.FootBallStadiyamName.text = "\(footBall.cupName)"
        cell.teamName.text = "\(footBall.teamName)"
        cell.vsTeam.text = "\(footBall.vsTeam)"
        cell.teamName.text = "\(footBall.teamName)"
        cell.teamFullName.text = "\(footBall.teamFullname)"
        cell.teamFullName2.text = "\(footBall.teamFullname2)"
        cell.imege.image = UIImage(named: arrKabaddiImag[indexPath.row])
        cell.imege2.image = UIImage(named: arrKabaddiImag1[indexPath.row])

        cell.layer.borderWidth = 1
        cell.layer.borderColor = UIColor.darkGray.cgColor

        return cell
    }

     func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
         let storyBoard: UIStoryboard = UIStoryboard(name: "Main", bundle: nil)
         let kabaddi1ViewController = storyBoard.instantiateViewController(withIdentifier: "Kabaddi1ViewController") as! Kabaddi1ViewController
         self.navigationController?.pushViewController(kabaddi1ViewController, animated: true)
    }

}

extension KabaddiViewController: UICollectionViewDelegateFlowLayout{

    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CGSize(width: 350, height: 115)
    }
}


