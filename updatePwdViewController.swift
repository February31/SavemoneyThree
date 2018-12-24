//
//  updatePwdViewController.swift
//  SavemoneyThree
//
//  Created by student on 2018/12/24.
//  Copyright © 2018年 SICNU. All rights reserved.
//

import UIKit

class updatePwdViewController: UIViewController {

    @IBOutlet weak var rpPwd: UITextField!
    @IBOutlet weak var newPwd: UITextField!
    @IBOutlet weak var pwd: UITextField!
    
    var username:String!
    
    var dataSource = Array<Dictionary<String, Any>>()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */
    
    @IBAction func comfirmPressed(_ sender: Any) {
        //配置URL
       
        //完成的URL
        let urlStr = "http://route.showapi.com/27-9?showapi_appid= 83813&showapi_sign=2574573b19a44acb8cfff4860cbb2bc6&table=moneyuser&where=username=?&where_param=[\"ChangyuanWu\"]&set_data=password=?&set_param=[\"000\"]"
        print(urlStr)
        let url = URL(string: urlStr)
        print(username!)
        print(newPwd.text!)
        
        //配置请求参数
        var request = URLRequest(url: url!)
        
        
        request.httpMethod = "GET"
        //配置session
        let session = URLSession(configuration: URLSessionConfiguration.default)
        let task = session.dataTask(with: request) { (data, response, error) in
            //print(data)
            
            if error == nil {
                print("sucess")
                
                
            }
        }
        //开始任务
        task.resume()
    }
    

}

