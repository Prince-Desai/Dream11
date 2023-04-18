//
//  OTPViewController.swift
//  Dream11
//
//  Created by Prince Desai on 16/02/23.
//

import UIKit

class OTPViewController: UIViewController,UITextFieldDelegate {

    @IBOutlet weak var otpTextField1: UITextField!
    @IBOutlet weak var otpTextField2: UITextField!
    @IBOutlet weak var otpTextField3: UITextField!
    @IBOutlet weak var otpTextField4: UITextField!
    @IBOutlet weak var otpTextField5: UITextField!
    @IBOutlet weak var otpTextField6: UITextField!
    
    
    
    @IBOutlet weak var loginUseingEmail: UIButton!
    
    @IBOutlet weak var registrationButton: UIButton!
    
    
    
    var firstNumber : Int = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        otpTextField1.addTarget(self, action: #selector(self.textDidChange(textfield:)), for: UIControl.Event.editingChanged)
        otpTextField2.addTarget(self, action: #selector(self.textDidChange(textfield:)), for: UIControl.Event.editingChanged)
        otpTextField3.addTarget(self, action: #selector(self.textDidChange(textfield:)), for: UIControl.Event.editingChanged)
        otpTextField4.addTarget(self, action: #selector(self.textDidChange(textfield:)), for: UIControl.Event.editingChanged)
        otpTextField5.addTarget(self, action: #selector(self.textDidChange(textfield:)), for: UIControl.Event.editingChanged)
        otpTextField6.addTarget(self, action: #selector(self.textDidChange(textfield:)), for: UIControl.Event.editingChanged)
        rendomNUmber1()
        rendomNUmber2()
        rendomNUmber3()
        rendomNUmber4()
        rendomNUmber5()
        rendomNUmber6()
    }
    
    
    @IBAction func useingEmail(_ sender: Any) {
       
        let storyBoard: UIStoryboard = UIStoryboard(name: "Main", bundle: nil)
        
        let loginPage: LoginViewController = storyBoard.instantiateViewController(withIdentifier: "LoginViewController") as! LoginViewController
        
        self.navigationController?.pushViewController(loginPage, animated: true)
        
    }
    
    
    @IBAction func registerTeped(_ sender: UIButton) {
        let storyBoard: UIStoryboard = UIStoryboard(name: "Main", bundle: nil)
        
        let tabBar: TabBarViewController = storyBoard.instantiateViewController(withIdentifier: "TabBarViewController") as! TabBarViewController
        
        self.navigationController?.pushViewController(tabBar, animated: true)
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        otpTextField1.becomeFirstResponder()
    }
    
    func rendomNUmber1(){
        firstNumber  = Int.random(in: 1...9)
        otpTextField1.text = "\(firstNumber)"
    }
    func rendomNUmber2(){
        firstNumber  = Int.random(in: 1...9)
        otpTextField2.text = "\(firstNumber)"
    }
    func rendomNUmber3(){
        firstNumber  = Int.random(in: 1...9)
        otpTextField3.text = "\(firstNumber)"
    }
    func rendomNUmber4(){
        firstNumber  = Int.random(in: 1...9)
        otpTextField4.text = "\(firstNumber)"
    }
    func rendomNUmber5(){
        firstNumber  = Int.random(in: 1...9)
        otpTextField5.text = "\(firstNumber)"
    }
    func rendomNUmber6(){
        firstNumber  = Int.random(in: 1...9)
        otpTextField6.text = "\(firstNumber)"
    }
    
    @objc func textDidChange(textfield: UITextField){
        let  text = textfield.text
        if text?.utf16.count == 1{
            switch textfield {
                
            case otpTextField1:
                otpTextField2.becomeFirstResponder()
                break
                
            case otpTextField2:
                otpTextField3.becomeFirstResponder()
                break
                
            case otpTextField3:
                otpTextField4.becomeFirstResponder()
                break
                
            case otpTextField4:
                otpTextField4.resignFirstResponder()
                break
                
            default:
                otpTextField4.resignFirstResponder()
            }
        }
    }
}
