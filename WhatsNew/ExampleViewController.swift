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
//        whatsNewIfNeeded()
    }
    
    func whatsNewIfNeeded() {
        // Initialize WhatsNew
        let whatsNew = WhatsNew(
            // The Title
            title: "WhatsNewKit",
            // The features you want to showcase
            items: [
                WhatsNew.Item(
                    title: "Installation",
                    subtitle: "You can install WhatsNewKit via CocoaPods or Carthage",
                    image: UIImage(named: "installation")
                ),
                WhatsNew.Item(
                    title: "Open Source",
                    subtitle: "Contributions are very welcome 👨‍💻",
                    image: UIImage(named: "openSource")
                )
            ]
        )
        
        // Or create your own Theme and initialize a Configuration with your Theme
        let myTheme = WhatsNewViewController.Theme { configuration in
            configuration.backgroundColor = .white
            configuration.titleView.titleColor = .orange
            configuration.itemsView.titleFont = .systemFont(ofSize: 17)
            configuration.detailButton?.titleColor = .orange
            configuration.completionButton.backgroundColor = .orange
            // ...
        }
        
        let configuration = WhatsNewViewController.Configuration(
            theme: myTheme
        )
        
        // Initialize WhatsNewViewController with WhatsNew
        let whatsNewViewController = WhatsNewViewController(whatsNew: whatsNew, configuration: configuration)
        
        self.present(whatsNewViewController, animated: true, completion: nil)
    }
}

