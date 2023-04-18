//
//  BasketballViewController.swift
//  Dream11
//
//  Created by Prince Desai on 16/02/23.
//

import UIKit

struct BasketBall{
    var cupName: String
    var teamName: String
    var vsTeam: String
    var teamFullname: String
    var teamFullname2: String
}

class BasketballViewController: UIViewController {
    
    @IBOutlet weak var basketBallCollectionView: UICollectionView!
    
    var arrbasketBallTeam: [BasketBall] = []
    var arrbasketBallImag: [String] = ["bb1", "bb2", "bb3", "bb4", "bb5", "bb6", "bb7", "bb8", "bb9", "bb10","bb1", "bb2", "bb3", "bb4", "bb5", "bb6", "bb7", "bb8", "bb9", "bb10"]
    var arrbasketBallImag1: [String] = ["bb1", "bb2", "bb3", "bb4", "bb5", "bb6", "bb7", "bb8", "bb9", "bb10","bb1", "bb2", "bb3", "bb4", "bb5", "bb6", "bb7", "bb8", "bb9", "bb10"].reversed()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setup()
    }
    
    private func setup(){
        showTeamDetail()
        configerCollectionView()
    }
    
    private func showTeamDetail(){
        let basketBall1: BasketBall = BasketBall(cupName: "1", teamName: "ALW", vsTeam: "ALBT",teamFullname: "AL-Wehda",teamFullname2: "AL Batin")
        let basketBall2: BasketBall = BasketBall(cupName: "2", teamName: "NSSR", vsTeam: "ABH",teamFullname: "AL Nassr FC",teamFullname2: "Abha Club")
        let basketBall3: BasketBall = BasketBall(cupName: "3", teamName: "CT", vsTeam: "MG",teamFullname: "Cape Town City",teamFullname2: "Marumo Ballants")
        let basketBall4: BasketBall = BasketBall(cupName: "4", teamName: "HLL", vsTeam: "AFF",teamFullname: "AL Hilal SFC",teamFullname2: "AL Fateh FC")
        let basketBall5: BasketBall = BasketBall(cupName: "5", teamName: "POT", vsTeam: "INT",teamFullname: "FC Porto",teamFullname2: "Inter Milan")
        let basketBall6: BasketBall = BasketBall(cupName: "6", teamName: "MCI", vsTeam: "LEP",teamFullname: "Sri Lanka",teamFullname2: "RB Leipzig")
        let basketBall7: BasketBall = BasketBall(cupName: "7", teamName: "PU", vsTeam: "ASS",teamFullname: "Manchester City",teamFullname2: "Alianza San Salvador")
        let basketBall8: BasketBall = BasketBall(cupName: "8", teamName: "ATL", vsTeam: "OLI",teamFullname: "Philadelphila Union",teamFullname2: "Olimpia")
        let basketBall9: BasketBall = BasketBall(cupName: "9", teamName: "IBKS", vsTeam: "GET",teamFullname: "Istanbul Basaksehir",teamFullname2: "Gent")
        let basketBall10: BasketBall = BasketBall(cupName: "10", teamName: "SOU", vsTeam: "BRE",teamFullname: "Southampton",teamFullname2: "Brentfordz")
        
        arrbasketBallTeam = [basketBall1,basketBall2,basketBall3,basketBall4,basketBall5,basketBall6,basketBall7,basketBall8,basketBall9,basketBall10,basketBall1,basketBall2,basketBall3,basketBall4,basketBall5,basketBall6,basketBall7,basketBall8,basketBall9,basketBall10]
    
    }
    
    private func configerCollectionView(){
        let nibFile: UINib = UINib(nibName: "BasketBallCollectionViewCell", bundle: nil)
        basketBallCollectionView.register(nibFile, forCellWithReuseIdentifier: "BasketBallCollectionViewCell")
        
    }
}


extension BasketballViewController: UICollectionViewDelegate, UICollectionViewDataSource{
    
    
    func numberOfSections(in collectionView: UICollectionView) -> Int {
        return 1
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return arrbasketBallImag.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        
        let cell: BasketBallCollectionViewCell = collectionView.dequeueReusableCell(withReuseIdentifier: "BasketBallCollectionViewCell", for: indexPath) as! BasketBallCollectionViewCell
        let basketBall = arrbasketBallTeam[indexPath.row]
        
        
        cell.basketBallStadiyamName.text = "\(basketBall.cupName)"
        cell.teamName.text = "\(basketBall.teamName)"
        cell.vsTeam.text = "\(basketBall.vsTeam)"
        cell.teamName.text = "\(basketBall.teamName)"
        cell.teamFullName.text = "\(basketBall.teamFullname)"
        cell.teamFullName2.text = "\(basketBall.teamFullname2)"
        cell.imege.image = UIImage(named: arrbasketBallImag[indexPath.row])
        cell.imege2.image = UIImage(named: arrbasketBallImag1[indexPath.row])
        
        cell.layer.borderWidth = 1
        cell.layer.borderColor = UIColor.darkGray.cgColor
        
        return cell
    }
    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        let storyBoard: UIStoryboard = UIStoryboard(name: "Main", bundle: nil)
        let basketBall1ViewController = storyBoard.instantiateViewController(withIdentifier: "BasketBall1ViewController") as! BasketBall1ViewController
        self.navigationController?.pushViewController(basketBall1ViewController, animated: true)
    }
}

extension BasketballViewController: UICollectionViewDelegateFlowLayout{
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CGSize(width: 350, height: 115)
    }
}






