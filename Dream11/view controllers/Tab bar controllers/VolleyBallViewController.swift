//
//  VolleyBallViewController.swift
//  Dream11
//
//  Created by Prince Desai on 16/02/23.
//

import UIKit

struct VolleyBall{
    var cupName: String
    var teamName: String
    var vsTeam: String
    var teamFullname: String
    var teamFullname2: String
}

class VolleyBallViewController: UIViewController {

    @IBOutlet weak var volleyBallCollectionView: UICollectionView!
    
    var arrVolleyBallTeam: [VolleyBall] = []
    var arrVolleyBallImag: [String] = ["05", "02", "03", "04", "01", "06", "07", "08", "09", "05", "02", "03", "04", "01", "06", "07", "08", "09" ,"05", "02", "03", "04", "01", "06", "07", "08", "09"]
    var arrVolleyBallImag1: [String] = ["05", "02", "03", "04", "01", "06", "07", "08", "09", "05", "02", "03", "04", "01", "06", "07", "08", "09" ,"05", "02", "03", "04", "01", "06", "07", "08", "09"].reversed()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setup()
    }
    
    private func setup(){
        showTeamDetail()
        configerCollectionView()
    }
    
    private func showTeamDetail(){
        let volleyBall1: VolleyBall = VolleyBall(cupName: "1", teamName: "ALW", vsTeam: "ALBT",teamFullname: "AL-Wehda",teamFullname2: "AL Batin")
        let volleyBall2: VolleyBall = VolleyBall(cupName: "2", teamName: "NSSR", vsTeam: "ABH",teamFullname: "AL Nassr FC",teamFullname2: "Abha Club")
        let volleyBall3: VolleyBall = VolleyBall(cupName: "3", teamName: "CT", vsTeam: "MG",teamFullname: "Cape Town City",teamFullname2: "Marumo Ballants")
        let volleyBall4: VolleyBall = VolleyBall(cupName: "4", teamName: "HLL", vsTeam: "AFF",teamFullname: "AL Hilal SFC",teamFullname2: "AL Fateh FC")
        let volleyBall5: VolleyBall = VolleyBall(cupName: "5", teamName: "POT", vsTeam: "INT",teamFullname: "FC Porto",teamFullname2: "Inter Milan")
        let volleyBall6: VolleyBall = VolleyBall(cupName: "6", teamName: "MCI", vsTeam: "LEP",teamFullname: "Sri Lanka",teamFullname2: "RB Leipzig")
        let volleyBall7: VolleyBall = VolleyBall(cupName: "7", teamName: "PU", vsTeam: "ASS",teamFullname: "Manchester City",teamFullname2: "Alianza San Salvador")
        let volleyBall8: VolleyBall = VolleyBall(cupName: "8", teamName: "ATL", vsTeam: "OLI",teamFullname: "Philadelphila Union",teamFullname2: "Olimpia")
        let volleyBall9: VolleyBall = VolleyBall(cupName: "9", teamName: "IBKS", vsTeam: "GET",teamFullname: "Istanbul Basaksehir",teamFullname2: "Gent")
        let volleyBall10: VolleyBall = VolleyBall(cupName: "10", teamName: "SOU", vsTeam: "BRE",teamFullname: "Southampton",teamFullname2: "Brentfordz")
        
        arrVolleyBallTeam = [volleyBall1,volleyBall2,volleyBall3,volleyBall4,volleyBall5,volleyBall6,volleyBall7,volleyBall8,volleyBall9,volleyBall10,volleyBall1,volleyBall2,volleyBall3,volleyBall4,volleyBall5,volleyBall6,volleyBall7,volleyBall8,volleyBall9,volleyBall10]
    
    }
    
    private func configerCollectionView(){
        let nibFile: UINib = UINib(nibName: "VolleyBallCollectionViewCell", bundle: nil)
        volleyBallCollectionView.register(nibFile, forCellWithReuseIdentifier: "VolleyBallCollectionViewCell")
        
    }
}


extension VolleyBallViewController: UICollectionViewDelegate, UICollectionViewDataSource{
    
    
    func numberOfSections(in collectionView: UICollectionView) -> Int {
        return 1
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return arrVolleyBallImag.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        
        let cell: VolleyBallCollectionViewCell = collectionView.dequeueReusableCell(withReuseIdentifier: "VolleyBallCollectionViewCell", for: indexPath) as! VolleyBallCollectionViewCell
        let volleyBall = arrVolleyBallTeam[indexPath.row]
        
        
        cell.hockeyStadiyamName.text = "\(volleyBall.cupName)"
        cell.teamName.text = "\(volleyBall.teamName)"
        cell.vsTeam.text = "\(volleyBall.vsTeam)"
        cell.teamName.text = "\(volleyBall.teamName)"
        cell.teamFullName.text = "\(volleyBall.teamFullname)"
        cell.teamFullName2.text = "\(volleyBall.teamFullname2)"
        cell.imege.image = UIImage(named: arrVolleyBallImag[indexPath.row])
        cell.imege2.image = UIImage(named: arrVolleyBallImag1[indexPath.row])
        
        cell.layer.borderWidth = 1
        cell.layer.borderColor = UIColor.darkGray.cgColor
        
        return cell
    }
    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        let storyBoard: UIStoryboard = UIStoryboard(name: "Main", bundle: nil)
        let volleyBall1ViewController = storyBoard.instantiateViewController(withIdentifier: "VolleyBall1ViewController") as! VolleyBall1ViewController
        self.navigationController?.pushViewController(volleyBall1ViewController, animated: true)
    }
}

extension VolleyBallViewController: UICollectionViewDelegateFlowLayout{
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CGSize(width: 350, height: 115)
    }
}






