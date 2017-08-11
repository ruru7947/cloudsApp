//
//  TableViewController.swift
//  CloudsAPP
//
//  Created by ruru on 2017/8/7.
//  Copyright © 2017年 mike. All rights reserved.
//

import UIKit

class TableViewController: UITableViewController {
    
    var studentDatas = [StudentData]()

    override func viewDidLoad() {
        super.viewDidLoad()
        
        //模擬從網路取得資料
        loadSampleStudentDatas()

    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()

    }
    
    //模擬從網路取得資料
    func loadSampleStudentDatas() {
        let studentData1 = StudentData(name: "ruru1", gender: "male", birth: "1990-04-07")
        let studentData2 = StudentData(name: "ruru2", gender: "male", birth: "1990-05-07")
        let studentData3 = StudentData(name: "ruru3", gender: "male", birth: "1990-06-07")
        let studentData4 = StudentData(name: "ruru4", gender: "male", birth: "1990-07-07")
        let studentData5 = StudentData(name: "ruru5", gender: "male", birth: "1990-08-07")
        
        studentDatas += [studentData1, studentData2, studentData3, studentData4, studentData5]
    }

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
   
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return studentDatas.count
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "Cell", for: indexPath) as! StudentTableViewCell
        
        let studentData = studentDatas[indexPath.row]
        
        cell.genderLabe.text = studentData.gender
        cell.birthdayLabel.text = studentData.birth
        cell.nameLabel.text = studentData.name
       
        return cell
    }
 

    /*
    // Override to support conditional editing of the table view.
    override func tableView(_ tableView: UITableView, canEditRowAt indexPath: IndexPath) -> Bool {
     
        return true
    }
    */

    /*
   
    override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCellEditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete {
     
            tableView.deleteRows(at: [indexPath], with: .fade)
        } else if editingStyle == .insert {
     
        }    
    }
    */

    /*
    // Override to support rearranging the table view.
    override func tableView(_ tableView: UITableView, moveRowAt fromIndexPath: IndexPath, to: IndexPath) {

    }
    */

    /*

    override func tableView(_ tableView: UITableView, canMoveRowAt indexPath: IndexPath) -> Bool {
     
        return true
    }
    */

    /*
    // MARK: - Navigation

       override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
     
          }
    */

}
