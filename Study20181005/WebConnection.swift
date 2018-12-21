//
//  WebConnection.swift
//  Study20181005
//
//  Created by kinoshita on 2018/12/14.
//  Copyright © 2018 kinoshitaShinya Kinoshita. All rights reserved.
//

import Foundation

class WebConnection {
    // エラー記述？
    enum SerializationError: Error {
        case missing(String)
        case invalid(String, Any)
        /// 通信メソッド
        ///
        /// -Parameters:
        ///     -url: 接続するURL
        ///
        /*
        func connect(url: String) -> String {
            var value: String = ""
            let task = URLSession.shared.dataTask(url) { data, response, error in
                
                if let data=data, let response=response{
                    do{
                        let json = try JSONSerialization.jsonObject(with: <#T##Data#>, options: <#T##JSONSerialization.ReadingOptions#>.allowFragments) as! [String:Any]
                        // jsonオブジェクトをStringに変換
                        let jsonString = String(data: json, encoding: NSUTF8StringEncoding)
                        value = jsonString
                    } catch{
                        value = "Serialize Error"
                    }
                }else{
                    value = "Error"
                }
            }
            
            return value
        }*/
    }
}
