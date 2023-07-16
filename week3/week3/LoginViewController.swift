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
    //設定登入允許值
    let permission = (aacount:"appworks_school",password:"1234")
    //建立Alert訊息
    let alertSuccess = UIAlertController(title: "Success", message: "Login successful", preferredStyle: UIAlertController.Style.alert)
    let alertAccountWrong = UIAlertController(title: "Error",message: "Login fail\nIncorrect username", preferredStyle: UIAlertController.Style.alert)
    let alertAccountEmpty = UIAlertController(title: "Error", message: "Login fail\nAccount should not be empty.", preferredStyle: UIAlertController.Style.alert)
    let alertPasswordWrong = UIAlertController(title: "Error", message: "Login fail\nIncorrect password", preferredStyle: UIAlertController.Style.alert)
    let alertPasswordEmpty = UIAlertController(title: "Error", message: "Login fail\nPassword should not be empty.", preferredStyle: UIAlertController.Style.alert)
    //驗證用戶回傳值

    @IBAction func button(_ sender: UIButton) {
        if userAccount == permission.aacount && userPassword ==  permission.password{
            alertSuccess.addAction(UIAlertAction(title: "OK", style: UIAlertAction.Style.default,handler: nil))
            present(alertSuccess,animated: true,completion: nil)
        }
        if userAccount != nil && userAccount != permission.aacount{
            alertAccountWrong.addAction(UIAlertAction(title: "OK", style: UIAlertAction.Style.default,handler: nil))
            present(alertAccountWrong,animated: true,completion: nil)
        }
        if userAccount == nil{
            alertAccountEmpty.addAction(UIAlertAction(title: "OK", style: UIAlertAction.Style.default,handler: nil))
            present(alertAccountEmpty,animated: true,completion: nil)
        }
        if userPassword != nil && userPassword != permission.password{
            alertPasswordWrong.addAction(UIAlertAction(title: "OK", style: UIAlertAction.Style.default,handler: nil))
            present(alertPasswordWrong,animated: true,completion: nil)
        }
        if userPassword == nil{
            alertPasswordEmpty.addAction(UIAlertAction(title: "OK", style: UIAlertAction.Style.default,handler: nil))
            present(alertPasswordEmpty,animated: true,completion: nil)
        }
    }
}
