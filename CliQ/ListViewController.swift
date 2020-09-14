//
//  ListViewController.swift
//  CliQ
//
//  Created by SWUCOMPUTER on 2020/05/22.
//  Copyright © 2020 SWUCOMPUTER. All rights reserved.
//

import UIKit

class ListViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        //UINavigationBar.appearance().barTintColor = UIColor.purple
        self.navigationController?.isNavigationBarHidden=false
        let image = UIImage(named: "logo_Purple")
        navigationItem.titleView = UIImageView(image: image)
        //let imageCliQ = UIImage(named: "logo_purple")
        //navigationItem.titleView = UIImageView(image: imageCliQ)//네비게이션 바 타이틀 클리크 아이콘
        

        let leftBarButtonItem = UIBarButtonItem(image: UIImage(named: "Pnavi_Back"),
                                                            style: UIBarButtonItem.Style.plain
        ,
                                                            target: self, action: #selector(backHome(sender:)))//네비게이션 바 왼쪽 버튼 아이콘
        leftBarButtonItem.tintColor = UIColor(red: 153/255, green: 108/255, blue: 228/255, alpha: 1)
        self.navigationItem.leftBarButtonItem = leftBarButtonItem
        // Do any additional setup after loading the view.
    }
    
    @objc func backHome(sender: UIBarButtonItem) {//홈으로 이동
             let ViewControllerHome = self.storyboard?.instantiateViewController(withIdentifier: "Home")
               self.navigationController?.pushViewController(ViewControllerHome!, animated: true)
              //self.navigationController?.popViewController(animated: true)
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
