//
//  ViewController.swift
//  AlertSample
//
//  Created by Toru Hasegawa on 2019/05/14.
//  Copyright © 2019 Toru Hasegawa. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func tapAlertButton1(_ sender: Any) {
        let alert = UIAlertController(title: "デフォルトアラート", message: "シンプルなアラートです", preferredStyle: .alert)
        alert.addAction(UIAlertAction(title: "OK", style: .default, handler: { _ in
            print("tap ok")
        }))
        self.present(alert, animated: true, completion: nil)
    }
    
    @IBAction func tapAlertButton2(_ sender: Any) {
        let alert = UIAlertController(title: "キャンセルボタン有アラート", message: "キャンセルボタン有", preferredStyle: .alert)

        let okAction = UIAlertAction(title: "OK", style: .default, handler: {_ in print("OK") })
        let cancelAction = UIAlertAction(title: "CANCEL", style: .cancel, handler: {_ in print("cancel")})
        
        alert.addAction(okAction)
        alert.addAction(cancelAction)
        
        self.present(alert, animated: true, completion: nil)
    }

    @IBAction func tapAlertButton3(_ sender: Any) {
        let alert = UIAlertController(title: "Text入力有", message: "入力してください", preferredStyle: .alert)
        alert.addTextField(configurationHandler: {_ in
            print("text field")
        })
        
        let okAction = UIAlertAction(title: "OK", style: .default, handler: { _ in
            guard let text = alert.textFields![0].text else { return }
            print("Input Text: \(text)")
        })
        let cancelAction = UIAlertAction(title: "CANCEL", style: .cancel, handler: nil)
        
        alert.addAction(okAction)
        alert.addAction(cancelAction)
        
        self.present(alert, animated: true, completion: nil)
    }
    
    @IBAction func tapActionSheetButton1(_ sender: Any) {
        let alert = UIAlertController(title: nil, message: nil, preferredStyle: .actionSheet)

        let appleAction = UIAlertAction(title: "アップル", style: .default, handler: {_ in print("アップル") })
        let orangeAction = UIAlertAction(title: "オレンジ", style: .default, handler: {_ in print("オレンジ") })
        let bananaAction = UIAlertAction(title: "バナナ", style: .default, handler: {_ in print("バナナ") })
        let cancelAction = UIAlertAction(title: "CANCEL", style: .cancel, handler: {_ in print("CANCEL") })
        
        alert.addAction(appleAction)
        alert.addAction(orangeAction)
        alert.addAction(bananaAction)
        alert.addAction(cancelAction)
        
        self.present(alert, animated: true, completion: nil)
    }
}

