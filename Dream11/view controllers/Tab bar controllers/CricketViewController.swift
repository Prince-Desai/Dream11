//
//  CricketViewController.swift
//  Dream11
//
//  Created by Prince Desai on 16/02/23.
//

import UIKit

struct Cricket {
    var cupName: String
    var teamName: String
    var vsTeam: String
    var teamFullname: String
    var teamFullname2: String
}

class CricketViewController: UIViewController {
    
    
    
    @IBOutlet weak var cricketMtchCollectionView: UICollectionView!
    
    var timer: Timer?
    
    var arrCricketTeam: [Cricket] = []
    
    var arrCricketImag: [String] = ["05", "02", "03", "04", "01", "06", "07", "08", "09", "05", "02", "03", "04", "01", "06", "07", "08", "09" ,"05", "02", "03", "04", "01", "06", "07", "08", "09"]
    var arrCricketImag1: [String] = ["01", "02", "03", "04", "05", "06", "07", "08", "09", "01", "02", "03", "04", "05", "06", "07", "08", "09", "01", "02", "03", "04", "05", "06", "07", "08", "09"].reversed()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setup()
        
    }
    
   
    
    private func setup(){
        showTeamDetail()
        configerCollectionView()
    }
    
    private func showTeamDetail(){
        let cricket1: Cricket = Cricket(cupName: "Assam T20 Premier Club Championship", teamName: "SA", vsTeam: "PAK",teamFullname: "South Africa",teamFullname2: "Pakistan")
        let cricket2: Cricket = Cricket(cupName: "dhaka Premier OD cricket Legue", teamName: "BAN", vsTeam: "IND",teamFullname: "Banglades",teamFullname2: "India")
        let cricket3: Cricket = Cricket(cupName: "CWC Legue-2 One-Day", teamName: "ENG", vsTeam: "WI",teamFullname: "England",teamFullname2: "West Indies")
        let cricket4: Cricket = Cricket(cupName: "Navi Mumbai Premier League T20", teamName: "NZ", vsTeam: "SL",teamFullname: "New Zealand",teamFullname2: "Sri Lanka")
        let cricket5: Cricket = Cricket(cupName: "European Cricket Leauge T10", teamName: "AFG", vsTeam: "ENG",teamFullname: "Afghanistan",teamFullname2: "South Africa")
        let cricket6: Cricket = Cricket(cupName: "West Indies Test Championship 2023", teamName: "SL", vsTeam: "NZ",teamFullname: "Sri Lanka",teamFullname2: "England")
        let cricket7: Cricket = Cricket(cupName: "super League T20", teamName: "WI", vsTeam: "SA",teamFullname: "West Indies",teamFullname2: "South Africa")
        let cricket8: Cricket = Cricket(cupName: "Legends League T20", teamName: "IND", vsTeam: "BAN",teamFullname: "India",teamFullname2: "Banglades")
        let cricket9: Cricket = Cricket(cupName: "MLC Champions T20", teamName: "PAK", vsTeam: "AFG",teamFullname: "Pakistan",teamFullname2: "Afghanistan")
        
        arrCricketTeam = [cricket1,cricket2,cricket3,cricket4,cricket5,cricket6,cricket7,cricket8,cricket9,cricket1,cricket2,cricket3,cricket4,cricket5,cricket6,cricket7,cricket8,cricket9,cricket1,cricket2,cricket3,cricket4,cricket5,cricket6,cricket7,cricket8,cricket9]
    }
    
    private func configerCollectionView(){
        cricketMtchCollectionView.register(UINib(nibName: "CricketCollectionViewCell", bundle: nil), forCellWithReuseIdentifier: "cricketCollectionViewCell")
        
    }
}

extension CricketViewController: UICollectionViewDelegate, UICollectionViewDataSource{
    
    
    
    func numberOfSections(in collectionView: UICollectionView) -> Int {
        return 1
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
            return arrCricketImag.count
        
    }
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
           let cell: CricketCollectionViewCell = collectionView.dequeueReusableCell(withReuseIdentifier: "cricketCollectionViewCell", for: indexPath) as! CricketCollectionViewCell
            let cricket = arrCricketTeam[indexPath.row]
            
            cell.cricketCupName.text = "\(cricket.cupName)"
            cell.teamName.text = "\(cricket.teamName)"
            cell.teamFullName.text = "\(cricket.teamFullname)"
            cell.teamFullName2.text = "\(cricket.teamFullname2)"
            cell.vsTeam.text = "\(cricket.vsTeam)"
            cell.imege.image = UIImage(named: arrCricketImag[indexPath.row])
            cell.imege2.image = UIImage(named: arrCricketImag1[indexPath.row])
            cell.layer.borderWidth = 1
            cell.layer.borderColor = UIColor.darkGray.cgColor
        
    
        return cell
    }
    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        
        let storyBoard: UIStoryboard = UIStoryboard(name: "Main", bundle: nil)
        let cricket1ViewController = storyBoard.instantiateViewController(withIdentifier: "ApiViewController") as! ApiViewController
        self.navigationController?.pushViewController(cricket1ViewController, animated: true)
    }
    
}

extension CricketViewController: UICollectionViewDelegateFlowLayout{
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
            return CGSize(width: 350, height: 115)
    
    }
    
}


