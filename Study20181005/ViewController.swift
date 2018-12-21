//
//  ViewController.swift
//  Study20181005
//
//  Created by kinoshita on 2018/10/05.
//  Copyright © 2018年 kinoshitaShinya Kinoshita. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var labelText: UILabel!
    @IBOutlet weak var editText: UITextField!
    var inputText: String?
    
    @IBAction func tapGreen(_ sender: Any) {
        view.backgroundColor = UIColor.green
        labelText.text = "GREEN!!"
    }
    
    @IBAction func tapWhite(_ sender: Any) {
        view.backgroundColor = UIColor.white
        labelText.text = "WHITE!!!"
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    //次の画面への値渡し処理
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        var viewController2 = segue.destination as! ViewController2
        viewController2.recieveText = editText.text
    }
    
    // 入力欄以外をタップした時キーボードを隠す
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        inputText = editText?.text
        self.view.endEditing(true)
    }
    

}

