//
//  FeedBackViewController.swift
//  SavemoneyThree
//
//  Created by student on 2018/12/24.
//  Copyright © 2018年 SICNU. All rights reserved.
//

import UIKit

class FeedBackViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBAction func commit(_ sender: Any) {
        let commit = UIAlertController(title: "commited", message: "成功提交！", preferredStyle: .alert)
        commit.addAction(UIAlertAction(title: "确定", style: .default, handler: {(action) in
            
        }))
        present(commit,animated: true,completion: nil)
    }
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
