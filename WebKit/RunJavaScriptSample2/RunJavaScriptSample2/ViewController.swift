//
//  ViewController.swift
//  RunJavaScriptSample2
//
//  Created by Toru Hasegawa on 2019/05/11.
//  Copyright © 2019 Toru Hasegawa. All rights reserved.
//

import UIKit
import WebKit

class ViewController: UIViewController, WKNavigationDelegate {

    @IBOutlet weak var webView: WKWebView!

    override func viewDidLoad() {
        super.viewDidLoad()
        
        guard let url = Bundle.main.url(forResource: "www/index", withExtension: "html") else { return }

        let urlRquest = URLRequest(url: url)

        webView.navigationDelegate = self
        webView.load(urlRquest)
    }

    func webView(_ webView: WKWebView, didFinish navigation: WKNavigation!) {
        webView.evaluateJavaScript("test('hoge')", completionHandler: {(any, err) in
            if let err = err {
                print(err)
            }
        })
    }
    
    
}

