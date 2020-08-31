//
//  ViewController.swift
//  Pick Me
//
//  Created by Íris Soares on 17/08/20.
//  Copyright © 2020 irixs. All rights reserved.
//

import UIKit
import WebKit

class ViewController: UIViewController, WKUIDelegate {
    
    @IBOutlet var webView: WKWebView!
    @IBAction func randomButton(_ sender: UIButton) {
        let videos = ["Yy2OjJhVXSg", "HHKStLBYjR4", "ttuBFCpzRnw", "UOmolLOQ7Rs", "M3rg-rh6MPo", "TN6r5Z3oqLs", "NIld_iEc67s"]
        let n = arc4random_uniform(7)
        getVideo(videoCode: videos[Int(n)])
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    func getVideo(videoCode: String){
        let url = URL(string: "https://www.youtube.com/embed/\(videoCode)?autoplay=1")
        webView.load(URLRequest(url: url!))
    }
}
