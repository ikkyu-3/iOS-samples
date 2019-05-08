//
//  ViewController.swift
//  RunJavaScriptSample
//
//  Created by Toru Hasegawa on 2019/05/08.
//  Copyright © 2019 Toru Hasegawa. All rights reserved.
//

import UIKit
import WebKit

class ViewController: UIViewController {

    @IBOutlet weak var webView: WKWebView!

    override func viewDidLoad() {
        super.viewDidLoad()
        
        let myURL = URL(string: "http://127.0.0.1:3000/")
        let myRequest = URLRequest(url: myURL!)
        webView.load(myRequest)
    }

    // ボタンをタップした時にwebviewの関数を実行する
    @IBAction func tapRunJavaScriptButton(_ sender: Any) {
        webView.evaluateJavaScript("hoge(`test`)", completionHandler: nil)
    }
}

