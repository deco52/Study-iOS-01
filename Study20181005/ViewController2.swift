//
//  ViewController2.swift
//  Study20181005
//
//  Created by kinoshita on 2018/10/24.
//  Copyright © 2018年 kinoshitaShinya Kinoshita. All rights reserved.
//

import UIKit
import Foundation

class ViewController2: UIViewController {
    
    @IBOutlet weak var recieveLabel: UILabel!
    var recieveText: String?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // ラベルの大きさが動的に変化するように設定
        recieveLabel.numberOfLines = 0
        recieveLabel.sizeToFit()
        //recieveLabel.lineBreakMode =
        // 受け取った前画面の値をセット
        recieveLabel.text = recieveText
        
        // Do any additional setup after loading the view.
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    @IBAction func clickHTTPButton(_ sender: Any) {
        let stringUrl = "http://157.80.87.247/attendancesystem/android/android-seat-list.php"//ios-test/index.php" //ノートPCのXamppサーバ
        
        // Swift3からNS?とかいうものがなくなってurlになったらしい
        let url = URL(string: stringUrl)//.addingPercentEscapes(using: String.Encoding.utf8)!)!
        var req = URLRequest(url: url!)
        // post通信の設定
        req.httpMethod = "POST"
        req.httpBody = "r_id=1".data(using: .utf8)
        
        let task = URLSession.shared.dataTask(with: req, completionHandler: {
            (data, res, err) in
            if data != nil {
                //let text = NSString(data: data!, encoding: String.Encoding.utf8.rawValue)
                let text = String(data: data!, encoding: String.Encoding.utf8)//, encoding: String.Encoding.utf8.rawValue)
                DispatchQueue.main.sync(
                    execute: {
                        print(text as Any)
                        
                        // jsonパーステスト
                        let jsonData = text?.data(using: .utf8)
                        do {
                            let dic = try JSONSerialization.jsonObject(with: jsonData!,options: []) as? [String: Any]
                            print(dic?["count"] as Any)
                            
                            //let roomInfo = dic?["0"] as? [String: Any]
                            //print(roomInfo?["card_id"] as? String as Any)
                            
                            let count =  dic?["count"] as! Int
                            for i in 0 ..< count {
                                let roomInfo = dic?[String(i)] as? [String: Any]
                                print(roomInfo?["identity_id"] as? String as Any) // Optional方なのでunwrapする必要があるらしい(nil判定？
                                print(roomInfo?["card_id"] as? String as Any)
                            }
                        } catch {
                            print(error)
                        }
                        
                })
            }
        })
        task.resume()
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
