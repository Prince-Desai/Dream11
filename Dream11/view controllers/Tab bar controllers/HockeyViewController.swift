//
//  HockeyViewController.swift
//  Dream11
//
//  Created by Prince Desai on 16/02/23.
//

import UIKit

struct Hockey{
    var cupName: String
    var teamName: String
    var vsTeam: String
    var teamFullname: String
    var teamFullname2: String
}

class HockeyViewController: UIViewController {

    @IBOutlet weak var hockeyCollectionView: UICollectionView!
    
    var arrhockeyTeam: [Hockey] = []
    var arrhokceyImag: [String] = ["bb1", "bb2", "bb3", "bb4", "bb5", "bb6", "bb7", "bb8", "bb9", "bb10","bb1", "bb2", "bb3", "bb4", "bb5", "bb6", "bb7", "bb8", "bb9", "bb10"]
    var arrhokceyImag1: [String] = ["bb1", "bb2", "bb3", "bb4", "bb5", "bb6", "bb7", "bb8", "bb9", "bb10","bb1", "bb2", "bb3", "bb4", "bb5", "bb6", "bb7", "bb8", "bb9", "bb10"].reversed()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setup()
    }
    
    private func setup(){
        showTeamDetail()
        configerCollectionView()
    }
    
    private func showTeamDetail(){
        let hockey1: Hockey = Hockey(cupName: "1", teamName: "ALW", vsTeam: "ALBT",teamFullname: "AL-Wehda",teamFullname2: "AL Batin")
        let hockey2: Hockey = Hockey(cupName: "2", teamName: "NSSR", vsTeam: "ABH",teamFullname: "AL Nassr FC",teamFullname2: "Abha Club")
        let hockey3: Hockey = Hockey(cupName: "3", teamName: "CT", vsTeam: "MG",teamFullname: "Cape Town City",teamFullname2: "Marumo Ballants")
        let hockey4: Hockey = Hockey(cupName: "4", teamName: "HLL", vsTeam: "AFF",teamFullname: "AL Hilal SFC",teamFullname2: "AL Fateh FC")
        let hockey5: Hockey = Hockey(cupName: "5", teamName: "POT", vsTeam: "INT",teamFullname: "FC Porto",teamFullname2: "Inter Milan")
        let hockey6: Hockey = Hockey(cupName: "6", teamName: "MCI", vsTeam: "LEP",teamFullname: "Sri Lanka",teamFullname2: "RB Leipzig")
        let hockey7: Hockey = Hockey(cupName: "7", teamName: "PU", vsTeam: "ASS",teamFullname: "Manchester City",teamFullname2: "Alianza San Salvador")
        let hockey8: Hockey = Hockey(cupName: "8", teamName: "ATL", vsTeam: "OLI",teamFullname: "Philadelphila Union",teamFullname2: "Olimpia")
        let hockey9: Hockey = Hockey(cupName: "9", teamName: "IBKS", vsTeam: "GET",teamFullname: "Istanbul Basaksehir",teamFullname2: "Gent")
        let hockey10: Hockey = Hockey(cupName: "10", teamName: "SOU", vsTeam: "BRE",teamFullname: "Southampton",teamFullname2: "Brentfordz")
        
        arrhockeyTeam = [hockey1,hockey2,hockey3,hockey4,hockey5,hockey6,hockey7,hockey8,hockey9,hockey10,hockey1,hockey2,hockey3,hockey4,hockey5,hockey6,hockey7,hockey8,hockey9,hockey10]
    
    }
    
    private func configerCollectionView(){
        let nibFile: UINib = UINib(nibName: "HockeyCollectionViewCell", bundle: nil)
        hockeyCollectionView.register(nibFile, forCellWithReuseIdentifier: "HockeyCollectionViewCell")
        
    }
}


extension HockeyViewController: UICollectionViewDelegate, UICollectionViewDataSource{
    
    
    func numberOfSections(in collectionView: UICollectionView) -> Int {
        return 1
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return arrhokceyImag.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        
        let cell: HockeyCollectionViewCell = collectionView.dequeueReusableCell(withReuseIdentifier: "HockeyCollectionViewCell", for: indexPath) as! HockeyCollectionViewCell
        let hockey = arrhockeyTeam[indexPath.row]
        
        
        cell.hockeyStadiyamName.text = "\(hockey.cupName)"
        cell.teamName.text = "\(hockey.teamName)"
        cell.vsTeam.text = "\(hockey.vsTeam)"
        cell.teamName.text = "\(hockey.teamName)"
        cell.teamFullName.text = "\(hockey.teamFullname)"
        cell.teamFullName2.text = "\(hockey.teamFullname2)"
        cell.imege.image = UIImage(named: arrhokceyImag[indexPath.row])
        cell.imege2.image = UIImage(named: arrhokceyImag1[indexPath.row])
        
        cell.layer.borderWidth = 1
        cell.layer.borderColor = UIColor.darkGray.cgColor
        
        return cell
    }
    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        let storyBoard: UIStoryboard = UIStoryboard(name: "Main", bundle: nil)
        let hockey1ViewController = storyBoard.instantiateViewController(withIdentifier: "Hockey1ViewController") as! Hockey1ViewController
        self.navigationController?.pushViewController(hockey1ViewController, animated: true)
    }
}

extension HockeyViewController: UICollectionViewDelegateFlowLayout{
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CGSize(width: 350, height: 115)
    }
}






