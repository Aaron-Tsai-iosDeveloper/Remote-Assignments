//
//  ViewController.swift
//  Week2_A Simple App_Aaron
//
//  Created by 蔡佳峪 on 2023/7/10.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
    }
    
    
    @IBOutlet weak var label2: UILabel!
    
        
    var sentences:[String] = [
    ("Lorem ipsum dolor sit amet, consectetur adipiscing elit. Maecenas tempus."), ("Contrary to popular belief, Lorem Ipsum is not simply random text."), ("Richard McClintock, a Latin professor at Hampden-Sydney College in "), ("looked up one of the more obscure Latin words, consectetur"),
    ("from a Lorem Ipsum passage, and going through the cities of the word"), ("This book is a treatise on the theory of ethics, very popular during the."), ("The first line of Lorem Ipsum, Lorem ipsum dolor sit amet.."),
    ]
    
    var backGroundColor:[UIColor] = [.red, .orange, .yellow , .green , .blue , .purple , .white , ]
    
    @IBAction func button(_ sender: UIButton) {
        label2.text = sentences.randomElement()
        view.backgroundColor = backGroundColor.randomElement()
    }
    
}

