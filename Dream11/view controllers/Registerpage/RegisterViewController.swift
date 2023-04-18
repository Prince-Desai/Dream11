//
//  RegisterViewController.swift
//  Dream11
//
//  Created by Prince Desai on 16/02/23.
//

import UIKit

class RegisterViewController: UIViewController {

    
    @IBOutlet weak var numberTextFild: UITextField!
    
    @IBOutlet weak var ragisterButton: UIButton!
    
    @IBOutlet weak var enterCode: UIButton!
    
    @IBOutlet weak var login: UIButton!
   
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    private func setup(massage:String){
        
        let alert: UIAlertController = UIAlertController(title: "Error", message: massage, preferredStyle: .alert)
        
        let okButton: UIAlertAction = UIAlertAction(title: "Ok", style: .default) { button in
            
        }
        let cancelButton: UIAlertAction = UIAlertAction(title: "cancel", style: .destructive) { button in
            
        }
        alert.addAction(okButton)
        alert.addAction(cancelButton)
        present(alert, animated: true, completion: nil)
    }
   
    @IBAction func registerTeped(_ sender: UIButton) {
        if numberTextFild.text? .count ?? 0 <= 9 {
            setup(massage: "Invelid Number")
        }
        
        let storyBoard: UIStoryboard = UIStoryboard(name: "Main", bundle: nil)
        
        let registerPage: OTPViewController = storyBoard.instantiateViewController(withIdentifier: "OTPViewController") as! OTPViewController
        
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
