//
//  HandBallViewController.swift
//  Dream11
//
//  Created by Prince Desai on 16/02/23.
//

import UIKit

struct HandBall{
    var cupName: String
    var teamName: String
    var vsTeam: String
    var teamFullname: String
    var teamFullname2: String
}

class HandBallViewController: UIViewController {

    @IBOutlet weak var handBallCollectionView: UICollectionView!
    
    var arrHandBallTeam: [HandBall] = []
    var arrHandBallImag: [String] = ["hb1","hb2","hb3","hb4","hb8","hb6"]
    var arrHandBallImag1: [String] = ["hb7","hb8","hb9","hb3","hb4","hb1"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setup()
    }
    
    private func setup(){
        showTeamDetail()
        configerCollectionView()
    }
    
    private func showTeamDetail(){
        let handBall1: HandBall = HandBall(cupName: "Denmark Men's League", teamName: "AJK-W", vsTeam: "SJW-W",teamFullname: "Ajax Kobenhavn Women",teamFullname2: "Sonderjyske Women")
        let handBall2: HandBall = HandBall(cupName: "German league", teamName: "RNL", vsTeam: "HAM",teamFullname: "Rhein-Neckar Lower",teamFullname2: "HSV Hamburg")
        let handBall3: HandBall = HandBall(cupName: "Denmark Men's League", teamName: "MID", vsTeam: "NRJ",teamFullname: "HC Midtjylland",teamFullname2: "Nordsjelland Handbold")
        let handBall4: HandBall = HandBall(cupName: "German league", teamName: "GWD", vsTeam: "FAG",teamFullname: "TSV GWD Minden",teamFullname2: "Frisch Auf Goppingen")
        let handBall5: HandBall = HandBall(cupName: "SEHA League", teamName: "KIE", vsTeam: "FB",teamFullname: "THW-Kiel",teamFullname2: "Fuches Berlin")
        let handBall6: HandBall = HandBall(cupName: "Denmark Men's League", teamName: "RKP", vsTeam: "TTP",teamFullname: "RK Partizan",teamFullname2: "Tatran Presov")
      
        
        arrHandBallTeam = [handBall1,handBall2,handBall3,handBall4,handBall5,handBall6,handBall1,handBall2,handBall3,handBall4,handBall5,handBall6]
    
    }
    
    private func configerCollectionView(){
        let nibFile: UINib = UINib(nibName: "HandBallCollectionViewCell", bundle: nil)
        handBallCollectionView.register(nibFile, forCellWithReuseIdentifier: "HandBallCollectionViewCell")
        
    }
}


extension HandBallViewController: UICollectionViewDelegate, UICollectionViewDataSource{
    
    
    func numberOfSections(in collectionView: UICollectionView) -> Int {
        return 1
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return arrHandBallImag.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        
        let cell: HandBallCollectionViewCell = collectionView.dequeueReusableCell(withReuseIdentifier: "HandBallCollectionViewCell", for: indexPath) as! HandBallCollectionViewCell
        let handBall = arrHandBallTeam[indexPath.row]
        
        
        cell.hockeyStadiyamName.text = "\(handBall.cupName)"
        cell.teamName.text = "\(handBall.teamName)"
        cell.vsTeam.text = "\(handBall.vsTeam)"
        cell.teamName.text = "\(handBall.teamName)"
        cell.teamFullName.text = "\(handBall.teamFullname)"
        cell.teamFullName2.text = "\(handBall.teamFullname2)"
        cell.imege.image = UIImage(named: arrHandBallImag[indexPath.row])
        cell.imege2.image = UIImage(named: arrHandBallImag1[indexPath.row])
        
        cell.layer.borderWidth = 1
        cell.layer.borderColor = UIColor.darkGray.cgColor
        
        return cell
    }
    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        let storyBoard: UIStoryboard = UIStoryboard(name: "Main", bundle: nil)
        let handBall1ViewController = storyBoard.instantiateViewController(withIdentifier: "HandBall1ViewController") as! HandBall1ViewController
        self.navigationController?.pushViewController(handBall1ViewController, animated: true)
    }
}

extension HandBallViewController: UICollectionViewDelegateFlowLayout{
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CGSize(width: 350, height: 115)
    }
}






