//
//  BaseBallViewController.swift
//  Dream11
//
//  Created by Prince Desai on 16/02/23.
//

import UIKit

struct BaseBall{
    var cupName: String
    var teamName: String
    var vsTeam: String
    var teamFullname: String
    var teamFullname2: String
}

class BaseBallViewController: UIViewController {
    
    @IBOutlet weak var baseBallCollectionView: UICollectionView!
    
    var arrBaseBallTeam: [BaseBall] = []
    var arrBaseBallImag: [String] = ["05", "02", "03", "04", "01", "06", "07", "08", "09", "05", "02", "03", "04", "01", "06", "07", "08", "09" ,"05", "02", "03", "04", "01", "06", "07", "08", "09"]
    var arrBaseBallImag1: [String] = ["05", "02", "03", "04", "01", "06", "07", "08", "09", "05", "02", "03", "04", "01", "06", "07", "08", "09" ,"05", "02", "03", "04", "01", "06", "07", "08", "09"].reversed()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setup()
    }
    
    private func setup(){
        showTeamDetail()
        configerCollectionView()
    }
    
    private func showTeamDetail(){
        let baseBall1: BaseBall = BaseBall(cupName: "1", teamName: "ALW", vsTeam: "ALBT",teamFullname: "AL-Wehda",teamFullname2: "AL Batin")
        let baseBall2: BaseBall = BaseBall(cupName: "2", teamName: "NSSR", vsTeam: "ABH",teamFullname: "AL Nassr FC",teamFullname2: "Abha Club")
        let baseBall3: BaseBall = BaseBall(cupName: "3", teamName: "CT", vsTeam: "MG",teamFullname: "Cape Town City",teamFullname2: "Marumo Ballants")
        let baseBall4: BaseBall = BaseBall(cupName: "4", teamName: "HLL", vsTeam: "AFF",teamFullname: "AL Hilal SFC",teamFullname2: "AL Fateh FC")
        let baseBall5: BaseBall = BaseBall(cupName: "5", teamName: "POT", vsTeam: "INT",teamFullname: "FC Porto",teamFullname2: "Inter Milan")
        let baseBall6: BaseBall = BaseBall(cupName: "6", teamName: "MCI", vsTeam: "LEP",teamFullname: "Sri Lanka",teamFullname2: "RB Leipzig")
        let baseBall7: BaseBall = BaseBall(cupName: "7", teamName: "PU", vsTeam: "ASS",teamFullname: "Manchester City",teamFullname2: "Alianza San Salvador")
        let baseBall8: BaseBall = BaseBall(cupName: "8", teamName: "ATL", vsTeam: "OLI",teamFullname: "Philadelphila Union",teamFullname2: "Olimpia")
        let baseBall9: BaseBall = BaseBall(cupName: "9", teamName: "IBKS", vsTeam: "GET",teamFullname: "Istanbul Basaksehir",teamFullname2: "Gent")
        let baseBall10: BaseBall = BaseBall(cupName: "10", teamName: "SOU", vsTeam: "BRE",teamFullname: "Southampton",teamFullname2: "Brentfordz")
        
        arrBaseBallTeam = [baseBall1,baseBall2,baseBall3,baseBall4,baseBall5,baseBall6,baseBall7,baseBall8,baseBall9,baseBall10,baseBall1,baseBall2,baseBall3,baseBall4,baseBall5,baseBall6,baseBall7,baseBall8,baseBall9,baseBall10,
                           baseBall1,baseBall2,baseBall3,baseBall4,baseBall5,baseBall6,baseBall7,baseBall8,baseBall9,baseBall10]
    }
    private func configerCollectionView(){
        let nibFile: UINib = UINib(nibName: "BaseBallCollectionViewCell", bundle: nil)
        baseBallCollectionView.register(nibFile, forCellWithReuseIdentifier: "baseBallCollectionViewCell")
    }
}
extension BaseBallViewController: UICollectionViewDelegate, UICollectionViewDataSource{
    
    func numberOfSections(in collectionView: UICollectionView) -> Int {
        return 1
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return arrBaseBallImag.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        
        let cell = baseBallCollectionView.dequeueReusableCell(withReuseIdentifier: "baseBallCollectionViewCell", for: indexPath) as! BaseBallCollectionViewCell
        let baseBall = arrBaseBallTeam[indexPath.row]
        cell.hockeyStadiyamName.text = "\(baseBall.cupName)"
        cell.teamName.text = "\(baseBall.teamName)"
        cell.vsTeam.text = "\(baseBall.vsTeam)"
        cell.teamName.text = "\(baseBall.teamName)"
        cell.teamFullName.text = "\(baseBall.teamFullname)"
        cell.teamFullName2.text = "\(baseBall.teamFullname2)"
        cell.imege.image = UIImage(named: arrBaseBallImag[indexPath.row])
        cell.imege2.image = UIImage(named: arrBaseBallImag1[indexPath.row])
        cell.layer.borderWidth = 1
        cell.layer.borderColor = UIColor.darkGray.cgColor
        
        return cell
    }
    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        let storyBoard: UIStoryboard = UIStoryboard(name: "Main", bundle: nil)
        let baseBall1ViewController = storyBoard.instantiateViewController(withIdentifier: "BaseBall1ViewController") as! BaseBall1ViewController
        self.navigationController?.pushViewController(baseBall1ViewController, animated: true)
    }
}

extension BaseBallViewController: UICollectionViewDelegateFlowLayout{
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CGSize(width: 350, height: 115)
    }
}

