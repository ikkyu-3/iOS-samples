//
//  TabBarController.swift
//  TabBarSample
//
//  Created by Toru Hasegawa on 2019/05/11.
//  Copyright © 2019 Toru Hasegawa. All rights reserved.
//

import UIKit

class TabBarController: UITabBarController, UITabBarControllerDelegate {
    override func viewDidLoad() {
        super.viewDidLoad()
        delegate = self
    }
    
    func tabBarController(_ tabBarController: UITabBarController, didSelect viewController: UIViewController) {
        print((viewController as! CustomViewController).name!)
    }
}
