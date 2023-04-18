//
//  FootballViewController.swift
//  Dream11
//
//  Created by Prince Desai on 16/02/23.
//

import UIKit

struct FootBall {
    var cupName: String
    var teamName: String
    var vsTeam: String
    var teamFullname: String
    var teamFullname2: String
}

class FootballViewController: UIViewController {
    
    @IBOutlet weak var footballCollectionView: UICollectionView!
    
    var arrFootBallTeam: [FootBall] = []
    var arrFootBallImag: [String] = ["fb1", "fb2", "fb3", "fb4", "fb5", "fb6", "fb7", "fb8", "fb9", "fb10","fb1", "fb2", "fb3", "fb4", "fb5", "fb6", "fb7", "fb8", "fb9", "fb10"]
    var arrFootBallImag1: [String] = ["fb1", "fb2", "fb3", "fb4", "fb5", "fb6", "fb7", "fb8", "fb9", "fb10","fb1", "fb2", "fb3", "fb4", "fb5", "fb6", "fb7", "fb8", "fb9", "fb10"].reversed()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setup()
    }
    
    private func setup(){
        showTeamDetail()
        configerCollectionView()
    }
    
    private func showTeamDetail(){
        let footBall1: FootBall = FootBall(cupName: "Women's Champions League", teamName: "ALW", vsTeam: "ALBT",teamFullname: "AL-Wehda",teamFullname2: "AL Batin")
        let footBall2: FootBall = FootBall(cupName: "Argentinian League", teamName: "NSSR", vsTeam: "ABH",teamFullname: "AL Nassr FC",teamFullname2: "Abha Club")
        let footBall3: FootBall = FootBall(cupName: "International Friendlies", teamName: "CT", vsTeam: "MG",teamFullname: "Cape Town City",teamFullname2: "Marumo Ballants")
        let footBall4: FootBall = FootBall(cupName: "AFCON Qualifiers", teamName: "HLL", vsTeam: "AFF",teamFullname: "AL Hilal SFC",teamFullname2: "AL Fateh FC")
        let footBall5: FootBall = FootBall(cupName: "Argentinian League", teamName: "POT", vsTeam: "INT",teamFullname: "FC Porto",teamFullname2: "Inter Milan")
        let footBall6: FootBall = FootBall(cupName: "Women's Champions League", teamName: "MCI", vsTeam: "LEP",teamFullname: "Sri Lanka",teamFullname2: "RB Leipzig")
        let footBall7: FootBall = FootBall(cupName: "Argentinian League", teamName: "PU", vsTeam: "ASS",teamFullname: "Manchester City",teamFullname2: "Alianza San Salvador")
        let footBall8: FootBall = FootBall(cupName: "AFCON Qualifiers", teamName: "ATL", vsTeam: "OLI",teamFullname: "Philadelphila Union",teamFullname2: "Olimpia")
        let footBall9: FootBall = FootBall(cupName: "Argentinian League", teamName: "IBKS", vsTeam: "GET",teamFullname: "Istanbul Basaksehir",teamFullname2: "Gent")
        let footBall10: FootBall = FootBall(cupName: "FCON Qualifiers", teamName: "SOU", vsTeam: "BRE",teamFullname: "Southampton",teamFullname2: "Brentfordz")
        
        arrFootBallTeam = [footBall1,footBall2,footBall3,footBall4,footBall5,footBall6,footBall7,footBall8,footBall9,footBall10,footBall1,footBall2,footBall3,footBall4,footBall5,footBall6,footBall7,footBall8,footBall9,footBall10]
    }
    
    private func configerCollectionView(){
        let nibFile: UINib = UINib(nibName: "FootballCollectionViewCell", bundle: nil)
        footballCollectionView.register(nibFile, forCellWithReuseIdentifier: "FootballCollectionViewCell")
    }
}



extension FootballViewController: UICollectionViewDelegate, UICollectionViewDataSource{
   
   
    func numberOfSections(in collectionView: UICollectionView) -> Int {
        return 1
    }
   
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return arrFootBallTeam.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        
        let cell: FootballCollectionViewCell = collectionView.dequeueReusableCell(withReuseIdentifier: "FootballCollectionViewCell", for: indexPath) as! FootballCollectionViewCell
        let footBall = arrFootBallTeam[indexPath.row]
        
      
        cell.FootBallStadiyamName.text = "\(footBall.cupName)"
        cell.teamName.text = "\(footBall.teamName)"
        cell.vsTeam.text = "\(footBall.vsTeam)"
        cell.teamName.text = "\(footBall.teamName)"
        cell.teamFullName.text = "\(footBall.teamFullname)"
        cell.teamFullName2.text = "\(footBall.teamFullname2)"
        cell.imege.image = UIImage(named: arrFootBallImag[indexPath.row])
        cell.imege2.image = UIImage(named: arrFootBallImag1[indexPath.row])
       
        cell.layer.borderWidth = 1
        cell.layer.borderColor = UIColor.darkGray.cgColor
        
        return cell
    }
    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        let storyBoard: UIStoryboard = UIStoryboard(name: "Main", bundle: nil)
        let football1ViewController = storyBoard.instantiateViewController(withIdentifier: "Football1ViewController") as! Football1ViewController
        self.navigationController?.pushViewController(football1ViewController, animated: true)
    }
}

extension FootballViewController: UICollectionViewDelegateFlowLayout{
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CGSize(width: 350, height: 115)
    }
}


