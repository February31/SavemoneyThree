//
//  ViewController.swift
//  SavemoneyThree
//
//  Created by student on 2018/12/24.
//  Copyright © 2018年 SICNU. All rights reserved.
//

import UIKit

class PersonalCenterViewController: UIViewController {


    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

//    @IBAction func personalCenterPressed(_ sender: Any) {
//        let psVC = UIStoryboard(name: "Main", bundle: nil).instantiateViewController(withIdentifier: "tab")
//        self.navigationController?.pushViewController(psVC, animated: true)
//    }
    
    @IBAction func scorePressed(_ sender: Any) {
        let alert = UIAlertController(title: "", message: "应用想要打开App Store ", preferredStyle: .actionSheet)
        alert.addAction(UIAlertAction(title: "打开", style: .default, handler: {(action) in
            
        }))
        alert.addAction(UIAlertAction(title: "不同意", style: .default, handler: {(action) in
            
        }))
        present(alert,animated: true,completion: nil)
    }
    @IBAction func sharePressed(_ sender: Any) {
        let alert = UIAlertController(title: "", message: "分享本app", preferredStyle: .actionSheet)
        alert.addAction(UIAlertAction(title: "分享到QQ空间", style: .default, handler: {(action) in
            
        }))
        alert.addAction(UIAlertAction(title: "分享到朋友圈", style: .default, handler: {(action) in
            
        }))
        alert.addAction(UIAlertAction(title: "取消分享", style: .default, handler: {(action) in
            
        }))
        present(alert,animated: true,completion: nil)
    }
    
    
}
