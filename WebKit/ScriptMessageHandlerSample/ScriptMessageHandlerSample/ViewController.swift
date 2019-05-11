//
//  ViewController.swift
//  ScriptMessageHandlerSample
//
//  Created by Toru Hasegawa on 2019/05/10.
//  Copyright © 2019 Toru Hasegawa. All rights reserved.
//

import UIKit
import WebKit

class ViewController: UIViewController, WKScriptMessageHandler {
    var webView: WKWebView!
    
    override func loadView() {
        let webConfiguration = WKWebViewConfiguration()

        let userContentController = WKUserContentController()
        // messageHandlersのhandler名を追加
        // window.webkit.messageHandlers.tapButton.postMessage(/* なんらかのデータ */)
        userContentController.add(self, name: "tapButton")

        
        webConfiguration.userContentController = userContentController
        webView = WKWebView(frame: .zero, configuration: webConfiguration)

        view = webView
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        
        if let url = Bundle.main.url(forResource: "index", withExtension: "html") {
            let myRequest = URLRequest(url: url)
            webView.load(myRequest)
        }
    }

    // WebViewでwindow.webkit.messageHandlers.{handler名}.postMessageが実行された時に呼び出される
    func userContentController(_ userContentController: WKUserContentController, didReceive message: WKScriptMessage) {
        print(message.name) // tapButton
        print(message.body) // postMessageに渡したデータ
    }
}

