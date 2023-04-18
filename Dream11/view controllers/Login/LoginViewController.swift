//
//  LoginViewController.swift
//  Dream11
//
//  Created by Prince Desai on 16/02/23.
//

import UIKit

class LoginViewController: UIViewController {

    
    @IBOutlet weak var mobileNumber: UITextField!
    
    @IBAction func numberTextField(_ sender: UIButton) {
        if mobileNumber.text? .count ?? 0 <= 9 {
            setup(massage: "Invelid Number")
        }
    }
    
    @IBAction func loginButton(_ sender: Any) {
        
    }
    
    @IBAction func registerButton(_ sender: Any) {
        let storyBoard: UIStoryboard = UIStoryboard(name: "Main", bundle: nil)
        
        let registerPage: RegisterViewController = storyBoard.instantiateViewController(withIdentifier: "RegisterViewController") as! RegisterViewController
        
        self.navigationController?.pushViewController(registerPage, animated: true)
    }
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
    
    @IBAction func loginButtonTeped(_ sender: UIButton) {
        let storyBoard: UIStoryboard = UIStoryboard(name: "Main", bundle: nil)
        
        let loginPage: OTPViewController = storyBoard.instantiateViewController(withIdentifier: "OTPViewController") as! OTPViewController
        
        self.navigationController?.pushViewController(loginPage, animated: true)
    }
}

extension String{
    
    func validateEmailId() -> Bool {
        let emailRegEx = "[A-Z0-9a-z._%+-]+@[A-Za-z0-9.-]+\\.[A-Za-z]{2,4}"
        return applyPredicateOnRegex(regexStr: emailRegEx)
    }
    
    func validatePassword(mini: Int = 8, max: Int = 8) -> Bool {
        var passRegEx = ""
        if mini >= max{
            passRegEx = "^(?=.*[A-Za-z])(?=.*\\d)[A-Za-z\\d]{\(mini),}$"
        }else{
            passRegEx = "^(?=.*[A-Za-z])(?=.*\\d)[A-Za-z\\d]{\(mini),\(max)}$"
        }
        return applyPredicateOnRegex(regexStr: passRegEx)
    }
    
    func applyPredicateOnRegex(regexStr: String) -> Bool{
        let trimmedString = self.trimmingCharacters(in: .whitespaces)
        let validateOtherString = NSPredicate(format: "SELF MATCHES %@", regexStr)
        let isValidateOtherString = validateOtherString.evaluate(with: trimmedString)
        return isValidateOtherString
    }
}

