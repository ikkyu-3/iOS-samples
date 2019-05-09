//
//  ViewController.swift
//  LoadLocalHtmlIntoWebViewSample
//
//  Created by Toru Hasegawa on 2019/05/09.
//  Copyright © 2019 Toru Hasegawa. All rights reserved.
//

import UIKit
import WebKit

class ViewController: UIViewController {

    @IBOutlet weak var webView: WKWebView!

    override func viewDidLoad() {
        super.viewDidLoad()

        if let url = Bundle.main.url(forResource: "www/index", withExtension: "html") {
            let request = URLRequest(url: url)
            webView.load(request)
        }
    }

}
