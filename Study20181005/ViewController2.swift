//
//  ViewController2.swift
//  Study20181005
//
//  Created by kinoshita on 2018/10/24.
//  Copyright © 2018年 kinoshitaShinya Kinoshita. All rights reserved.
//

import UIKit

class ViewController2: UIViewController {
    
    @IBOutlet weak var recieveLabel: UILabel!
    var recieveText: String?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        //受け取った前画面の値をセット
        recieveLabel.text = recieveText
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
