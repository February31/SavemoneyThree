//
//  PS_TableViewController.swift
//  SavemoneyThree
//
//  Created by student on 2018/12/24.
//  Copyright © 2018年 SICNU. All rights reserved.
//

import UIKit

class PS_TableViewController: UITableViewController {


    
    @IBOutlet var mytableview: UITableView!
    

    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem
        
        mytableview.tableFooterView = UIView.init(frame: CGRect.zero)
        
    }

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return 5
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        if indexPath.row == 0{
            var icell: PS_headImageTableViewCell!
            icell = (tableView.dequeueReusableCell(withIdentifier: "hiCell") as! PS_headImageTableViewCell)
            icell.mylabel.text = "头像"
            icell.myimageview.image = UIImage(named: "ps_person")
            return icell
        }else if indexPath.row == 2{
            let cell = tableView.dequeueReusableCell(withIdentifier: "genderCell", for: indexPath)
            cell.textLabel?.text = "性别"
            cell.detailTextLabel?.text = "男"
            return cell
        }else if indexPath.row == 1 {
            let cell = tableView.dequeueReusableCell(withIdentifier: "idCell", for: indexPath)
            cell.textLabel?.text = "ID"
            cell.detailTextLabel?.text = "ChangyuanWu"
            return cell
        }else if indexPath.row == 4{
            let cell = tableView.dequeueReusableCell(withIdentifier: "updatePwdCell", for: indexPath)
            cell.textLabel?.text = "修改密码"
            cell.detailTextLabel?.text = ">"
            return cell
        }else{
            let cell = tableView.dequeueReusableCell(withIdentifier: "phoneCell", for: indexPath)
            cell.textLabel?.text = "手机"
            cell.detailTextLabel?.text = "123456789"
            return cell
        }
    }
    

        
    
    

    /*
    // Override to support conditional editing of the table view.
    override func tableView(_ tableView: UITableView, canEditRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the specified item to be editable.
        return true
    }
    */

    /*
    // Override to support editing the table view.
    override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCellEditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete {
            // Delete the row from the data source
            tableView.deleteRows(at: [indexPath], with: .fade)
        } else if editingStyle == .insert {
            // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
        }    
    }
    */

    /*
    // Override to support rearranging the table view.
    override func tableView(_ tableView: UITableView, moveRowAt fromIndexPath: IndexPath, to: IndexPath) {

    }
    */

    /*
    // Override to support conditional rearranging of the table view.
    override func tableView(_ tableView: UITableView, canMoveRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the item to be re-orderable.
        return true
    }
    */

    
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
        let upPwdVC = segue.destination as! updatePwdViewController
        let idCell = tableView.cellForRow(at: IndexPath.init(row: 1, section: 0))
        let username = idCell?.detailTextLabel?.text
        upPwdVC.username = username
    }
 

}
