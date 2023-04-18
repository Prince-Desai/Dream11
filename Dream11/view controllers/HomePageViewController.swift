//
//  HomePageViewController.swift
//  Dream11
//
//  Created by Prince Desai on 16/02/23.
//

import UIKit

class HomePageViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        let storyBoard: UIStoryboard = UIStoryboard(name: "Main", bundle: nil)
        
        let tabBarPage: UITabBarController = storyBoard.instantiateViewController(withIdentifier: "UITabBarController") as! UITabBarController
        
        self.navigationController?.pushViewController(tabBarPage, animated: true)
    }
    
}
