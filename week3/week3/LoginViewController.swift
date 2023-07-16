//
//  LoginViewController.swift
//  week3
//
//  Created by 蔡佳峪 on 2023/7/14.
//

import UIKit

class LoginViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    //閉包：驗證奇數
    let odd = { (number:Int) -> Bool in
        return number % 2 == 1
    }
    
    //切換登入與註冊頁面
    @IBOutlet weak var checkTextField: UITextField!
    @IBOutlet weak var checklabel: UILabel!
    @IBAction func changeSegment(_ sender: UISegmentedControl) {
        switch sender.selectedSegmentIndex {
        case 0 :
            checklabel.alpha = 0.2
            checkTextField.backgroundColor = UIColor.darkGray
            checkTextField.isEnabled = false
        case 1 :
            checklabel.alpha = 1.0
            checkTextField.backgroundColor = UIColor.white
            checkTextField.isEnabled = true
        default:
            break
        }
    }
    
    //取得用戶回傳值
    var userAccount:String?
    @IBAction func accountText(_ sender: UITextField) {
        if let accountText = sender.text{
            userAccount = accountText
        }else{
            userAccount = nil
        }
    }
    var userPassword:String?
    @IBAction func passwordText(_ sender: UITextField) {
        if let passwordText = sender.text{
            userPassword = passwordText
        }else{
            userPassword = nil
        }
    }
    var userCheckPassword:String?
    @IBAction func checkPasswordText(_ sender: UITextField) {
        if let checkPasswordText = sender.text{
            userCheckPassword = checkPasswordText
        }else{
            userCheckPassword = nil
        }
    }
    //設定登入允許值
    let permission = (aacount:"appworks_school",password:"1234")
    //驗證用戶回傳值
    @IBOutlet weak var segment: UISegmentedControl!
    @IBAction func button(_ sender: UIButton) {
        //登入驗證
        if segment.selectedSegmentIndex == 0 {
            if  userAccount == permission.aacount && userPassword ==  permission.password{
                let alertLoginSuccess = UIAlertController(title: "Success", message: "Login successful", preferredStyle: UIAlertController.Style.alert)
                alertLoginSuccess.addAction(UIAlertAction(title: "OK", style: UIAlertAction.Style.default,handler: nil))
                present(alertLoginSuccess,animated: true,completion: nil)
            }else if userAccount == nil{
                let alertAccountEmpty = UIAlertController(title: "Error", message: "Login fail\nAccount should not be empty.", preferredStyle: UIAlertController.Style.alert)
                alertAccountEmpty.addAction(UIAlertAction(title: "OK", style: UIAlertAction.Style.default,handler: nil))
                present(alertAccountEmpty,animated: true,completion: nil)
            }else if userPassword == nil{
                let alertPasswordEmpty = UIAlertController(title: "Error", message: "Login fail\nPassword should not be empty.", preferredStyle: UIAlertController.Style.alert)
                alertPasswordEmpty.addAction(UIAlertAction(title: "OK", style: UIAlertAction.Style.default,handler: nil))
                present(alertPasswordEmpty,animated: true,completion: nil)
            }else if userAccount != permission.aacount && userPassword !=  permission.password{
                let alertLoginfail = UIAlertController(title: "Error", message: "Login fail", preferredStyle: UIAlertController.Style.alert)
                alertLoginfail.addAction(UIAlertAction(title: "OK", style: UIAlertAction.Style.default,handler: nil))
                present(alertLoginfail,animated: true,completion: nil)
            }
        }
        //註冊驗證
        if segment.selectedSegmentIndex == 1 {
            if userAccount != nil && userPassword != nil && userPassword == userCheckPassword{
                let alertSignupSuccess = UIAlertController(title: "Success", message: "Signup successful", preferredStyle: UIAlertController.Style.alert)
                alertSignupSuccess.addAction(UIAlertAction(title: "OK", style: UIAlertAction.Style.default,handler: nil))
                present(alertSignupSuccess,animated: true,completion: nil)
            }else if userAccount == nil{
                let alertAccountEmpty = UIAlertController(title: "Error", message: "Signup fail\nAccount should not be empty.", preferredStyle: UIAlertController.Style.alert)
                alertAccountEmpty.addAction(UIAlertAction(title: "OK", style: UIAlertAction.Style.default,handler: nil))
                present(alertAccountEmpty,animated: true,completion: nil)
            }else if userPassword == nil{
                let alertPasswordEmpty = UIAlertController(title: "Error", message: "Signup fail\nPassword should not be empty.", preferredStyle: UIAlertController.Style.alert)
                alertPasswordEmpty.addAction(UIAlertAction(title: "OK", style: UIAlertAction.Style.default,handler: nil))
                present(alertPasswordEmpty,animated: true,completion: nil)
            }else if userCheckPassword == nil{
                let alertCheckPasswordEmpty = UIAlertController(title: "Error", message: "Sinup fail\nConfirmation field should not be empty.", preferredStyle: UIAlertController.Style.alert)
                alertCheckPasswordEmpty.addAction(UIAlertAction(title: "OK", style: UIAlertAction.Style.default,handler: nil))
                present(alertCheckPasswordEmpty,animated: true,completion: nil)
                dismiss(animated: true)
            }else if userPassword != userCheckPassword{
                let alertSignupfail = UIAlertController(title: "Error", message: "Signup fail", preferredStyle: UIAlertController.Style.alert)
                alertSignupfail.addAction(UIAlertAction(title: "OK", style: UIAlertAction.Style.default,handler: nil))
                present(alertSignupfail,animated: true,completion: nil)
            }
        }
        }
}
