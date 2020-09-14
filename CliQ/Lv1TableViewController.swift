//
//  Lv1TableViewController.swift
//  CliQ
//
//  Created by 홍승현 on 2020/05/30.
//  Copyright © 2020 SWUCOMPUTER. All rights reserved.
//

import UIKit

let Lv1Name = ["유두", "음모", "음경", "포궁", "자위", "콘돔"]

class Lv1TableViewController: UITableViewController {
    @IBOutlet var lv1ListView: UITableView!
    
    
    override func viewDidLoad() {
        self.navigationController?.isNavigationBarHidden=false
        super.viewDidLoad()
        let image = UIImage(named: "logo_Purple")
        navigationItem.titleView = UIImageView(image: image)
        let leftBarButtonItem = UIBarButtonItem(image: UIImage(named: "Pnavi_Back"),
                                                            style: UIBarButtonItem.Style.plain
        ,
                                                            target: self, action: #selector(backList(sender:)))//네비게이션 바 왼쪽 버튼 아이콘
        leftBarButtonItem.tintColor = UIColor(red: 153/255, green: 108/255, blue: 228/255, alpha: 1)
        self.navigationItem.leftBarButtonItem = leftBarButtonItem
    }

    @objc func backList(sender: UIBarButtonItem) {//홈으로 이동
             let ViewControllerList = self.storyboard?.instantiateViewController(withIdentifier: "List")
               self.navigationController?.pushViewController(ViewControllerList!, animated: true)

              //self.navigationController?.popViewController(animated: true)
          }
    // 뷰가 노출될 때마다 리스트의 데이터를 다시 불러옴
    override func viewWillAppear(_ animated: Bool) {
        lv1ListView.reloadData()
    }
        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return Lv1Name.count
    }
    
       // Lv1name의 값을 셀에 삽입함
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "lv1cell", for: indexPath)
           // Configure the cell...
        
        cell.textLabel?.text = Lv1Name[(indexPath as NSIndexPath).row]
        cell.textLabel?.textColor = UIColor(red: 153/255, green: 108/255, blue: 228/255, alpha: 1)
        
        /*// 특정 셀 없애기
        let num = [0, 2, 4] // 여기에 안 푼 문제 숫자들 넣기
        for i in 0..<num.count {
            if indexPath.row == num[i] {
                cell.isHidden = true
            }
        }
 */
        return cell
       }


    
    // 세그웨이를 이용하여 디테일 뷰로 전환하기 (여기서 값을 넘겨줌(해당 단어 이름 + 단어 인덱스)
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
        if segue.identifier == "lv1detail" {
            
            let cell = sender as! UITableViewCell
            let indexPath = self.lv1ListView.indexPath(for: cell)
            let detailView = segue.destination as! Lv1DetailViewController
            detailView.receiveLabel(Lv1Name[((indexPath as NSIndexPath?)?.row)!])
                        
        }
    }

}
