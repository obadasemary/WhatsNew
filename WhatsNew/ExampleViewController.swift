//
//  ExampleViewController.swift
//  WhatsNew
//
//  Created by Abdelrahman Mohamed on 12.12.2018.
//  Copyright © 2018 Abdelrahman Mohamed. All rights reserved.
//

import UIKit
import WhatsNewKit

class ExampleViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
    }

    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        
        presentWhatsNewViewController()
    }
}

