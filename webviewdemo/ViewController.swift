//
//  ViewController.swift
//  webviewdemo
//
//  Created by xiaoqiang cao on 5/10/18.
//  Copyright © 2018 xiaoqiang cao. All rights reserved.
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

//        let myURL = URL(string: "https://www.apple.com")
//        let myRequest = URLRequest(url: myURL!)
//        webView.load(myRequest)
        webView.allowsBackForwardNavigationGestures = true
        if let url = URL(string: "https://www.hackingwithswift.com") {
            UIApplication.shared.open(url, options: [:])
        }
        
        if let url2 = URL(string: "https://www.apple.com") {
            UIApplication.shared.open(url2, options: [:])
        }
        if let url3 = URL(string: "https://support.apple.com") {
            UIApplication.shared.open(url3, options: [:])
        }
        
        
    }}

