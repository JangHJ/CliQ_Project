//
//  Lv3TableViewController.swift
//  CliQ
//
//  Created by 홍승현 on 2020/05/30.
//  Copyright © 2020 SWUCOMPUTER. All rights reserved.
//

import UIKit

let Lv3Name = ["커닐링구스", "냉", "소음순", "핑거돔", "질막", "페미돔", "피임패치", "임플라논"
]

class Lv3TableViewController: UITableViewController {
    @IBOutlet var lv3ListView: UITableView!
    
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
    override func viewWillAppear(_ animated: Bool) {
        lv3ListView.reloadData()
    }

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return Lv3Name.count
    }
    // Lv3name의 값을 셀에 삽입함
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "lv3cell", for: indexPath)
           // Configure the cell...
        
        cell.textLabel?.text = Lv3Name[(indexPath as NSIndexPath).row]
        cell.textLabel?.textColor = UIColor(red: 153/255, green: 108/255, blue: 228/255, alpha: 1)
    
        return cell
       }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
        if segue.identifier == "lv3detail" {
            
            let cell = sender as! UITableViewCell
            let indexPath = self.lv3ListView.indexPath(for: cell)
            let detailView = segue.destination as! Lv3DetailViewController
            detailView.receiveLabel(Lv3Name[((indexPath as NSIndexPath?)?.row)!])
                        
        }

    }
}
