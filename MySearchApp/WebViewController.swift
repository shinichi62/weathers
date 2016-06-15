//
//  WebViewController.swift
//  MySearchApp
//
//  Created by Mao Nishi on 2015/10/12.
//  Copyright © 2015年 Mao Nishi. All rights reserved.
//

import UIKit

//商品ページを参照するための画面
class WebViewController: UIViewController {

    //商品ページのURL
    var itemUrl :String?
    
    //商品ページを参照するためのWebView
    @IBOutlet weak var webView: UIWebView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        //WebViewのurlを読み込ませてWebページを表示させる
        if let itemUrl = itemUrl {
            if let url = NSURL(string: itemUrl) {
                let request = NSURLRequest(URL: url)
                webView.loadRequest(request)
            }
        }
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
}
