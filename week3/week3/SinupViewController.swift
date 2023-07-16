//
//  SinupViewController.swift
//  week3
//
//  Created by 蔡佳峪 on 2023/7/14.
//

import UIKit

class SinupViewController: UIViewController{

    override func viewDidLoad() {
        super.viewDidLoad()
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
    //建立alert訊息
    let alertAccountEmpty = UIAlertController(title: "Error", message: "Sinup fail\nAccount should not be empty.", preferredStyle: UIAlertController.Style.alert)
    let alertPasswordEmpty = UIAlertController(title: "Error", message: "Sinup fail\nPassword should not be empty.", preferredStyle: UIAlertController.Style.alert)
    let alertCheckPasswordEmpty = UIAlertController(title: "Error", message: "Sinup fail\nConfirmation field should not be empty.", preferredStyle: UIAlertController.Style.alert)
    let alertSuccess = UIAlertController(title: "Success", message: "Registration Successful", preferredStyle: UIAlertController.Style.alert)
    //確認用戶回傳值
    @IBAction func button(_ sender: UIButton) {
        if userAccount == nil{
            alertAccountEmpty.addAction(UIAlertAction(title: "OK", style: UIAlertAction.Style.default,handler: nil))
            present(alertAccountEmpty,animated: true,completion: nil)
        }
        if userPassword == nil{
            alertPasswordEmpty.addAction(UIAlertAction(title: "OK", style: UIAlertAction.Style.default,handler: nil))
            present(alertPasswordEmpty,animated: true,completion: nil)
        }
        if userCheckPassword == nil{
            alertCheckPasswordEmpty.addAction(UIAlertAction(title: "OK", style: UIAlertAction.Style.default,handler: nil))
            present(alertCheckPasswordEmpty,animated: true,completion: nil)
        }
        if userAccount != nil && userPassword != nil && userPassword == userCheckPassword{
            alertSuccess.addAction(UIAlertAction.init(title: "OK", style: UIAlertAction.Style.default,handler: nil))
            present(alertSuccess,animated: true,completion: nil)
        }
        
    }
}
