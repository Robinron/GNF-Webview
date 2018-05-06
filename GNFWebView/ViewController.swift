//
//  ViewController.swift
//  GNFWebView
//
//  Created by Robin Moudnib on 03.05.2018.
//  Copyright © 2018 Moudnib Consulting ENK. All rights reserved.
//

import UIKit
import WebKit
class ViewController: UIViewController, WKUIDelegate {
    
    var webView: WKWebView!
    
    override func loadView() {
        let webConfiguration = WKWebViewConfiguration()
        webView = WKWebView(frame: .zero, configuration: webConfiguration)
        webView.uiDelegate = self
        view = webView
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let myURL = URL(string: "https://gnf.stefanblomberg.no")
        let myRequest = URLRequest(url: myURL!)
        webView.load(myRequest)
    }
    
    
}
