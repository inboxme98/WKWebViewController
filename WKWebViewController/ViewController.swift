//
//  ViewController.swift
//  WKWebViewController
//
//  Created by Varun Kumar on 06/03/19.
//  Copyright © 2019 Kumar. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var btngo: UIButton!
    @IBOutlet weak var tfurl: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    @IBAction func next(_ sender: Any)
    {
        let webVC = WKWebViewController(nibName: "WKWebViewController", bundle: nil)
        webVC.webRequestUrl = tfurl.text
        self.navigationController?.pushViewController(webVC, animated: true)
    }
    
}

