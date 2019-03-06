//
//  WKWebViewController.swift
//  dineout
//
//  Created by Ravi Tailor on 12/11/18.
//  Copyright © 2018 TIL. All rights reserved.
//

import UIKit
import WebKit

class WKWebViewController: UIViewController, WKUIDelegate {


    var webRequestUrl : String?

    var webView: WKWebView!
        
        override func loadView() {
            let webConfiguration = WKWebViewConfiguration()
            webView = WKWebView(frame: .zero, configuration: webConfiguration)
            webView.uiDelegate = self
            view = webView
        }
        override func viewDidLoad() {
            super.viewDidLoad()
            
            let myURL = URL(string:webRequestUrl ?? "https://www.google.com")
            let myRequest = URLRequest(url: myURL!)
            webView.load(myRequest)
        }
    
}
