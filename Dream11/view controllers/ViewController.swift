//
//  ViewController.swift
//  Dream11
//
//  Created by Prince Desai on 15/02/23.
//

import UIKit

class HomePageViewController: UIViewController {
    
    var curruntCellIndex = 0
    
    @IBOutlet weak var slider: UICollectionView!
    
    var imegeSlider = ["1","2","3"]
    var timer: Timer?
    
   
    @IBOutlet weak var registerButtn: UIButton!
    @IBOutlet weak var codeButton: UIButton!
    @IBOutlet weak var loginButton: UIButton!
   
    override func viewDidLoad() {
        super.viewDidLoad()
     
        timer = Timer.scheduledTimer(timeInterval: 1.5, target: self, selector: #selector(slideToNext), userInfo: nil, repeats: true)
        
    }
    @objc func slideToNext(){
        
        if (curruntCellIndex < imegeSlider.count-1 ){
            curruntCellIndex = curruntCellIndex + 1
        } else {
            curruntCellIndex = 0
        }
        
        slider.scrollToItem(at: IndexPath(item: curruntCellIndex, section: 0), at: .right, animated: false)
    }
  
    // MARK: - Navigation
   
    
    
    @IBAction func skipButton(_ sender: Any) {
        
        let storyBoard: UIStoryboard = UIStoryboard(name: "Main", bundle: nil)
        
        let tabBarViewController = storyBoard.instantiateViewController(withIdentifier: "TabBarViewController") as! TabBarViewController
        
        self.navigationController?.pushViewController(tabBarViewController, animated: true)
    }
    
    @IBAction func registerTeped(_ sender: UIButton) {
        let storyBoard: UIStoryboard = UIStoryboard(name: "Main", bundle: nil)
        
        let registerPage: RegisterViewController = storyBoard.instantiateViewController(withIdentifier: "RegisterViewController") as! RegisterViewController
        
        self.navigationController?.pushViewController(registerPage, animated: true)
    }
    
    @IBAction func loginTeped(_ sender: UIButton) {
      
        
        
        let storyBoard: UIStoryboard = UIStoryboard(name: "Main", bundle: nil)
        
        let loginPage: LoginViewController = storyBoard.instantiateViewController(withIdentifier: "LoginViewController") as! LoginViewController
        
        self.navigationController?.pushViewController(loginPage, animated: true)
    }
    
    @IBAction func enterCodeTeped(_ sender: UIButton) {
        let storyBoard: UIStoryboard = UIStoryboard(name: "Main", bundle: nil)
        
        let enterCodePage: EnterCodeViewController = storyBoard.instantiateViewController(withIdentifier: "EnterCodeViewController") as! EnterCodeViewController
        
        self.navigationController?.pushViewController(enterCodePage, animated: true)
    }
    
}
// slider
extension HomePageViewController : UICollectionViewDelegate, UICollectionViewDataSource, UICollectionViewDelegateFlowLayout{
    
    func numberOfSections(in collectionView: UICollectionView) -> Int {
        return 1
    }
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return imegeSlider.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        
        let cell = slider.dequeueReusableCell(withReuseIdentifier: "cell", for: indexPath) as! ImegeCollectionViewCell
        
        cell.sliderImeges.image = UIImage(named: imegeSlider[indexPath.row])
        
        return cell
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CGSize(width: slider.frame.width, height: slider.frame.height)
    }
}
