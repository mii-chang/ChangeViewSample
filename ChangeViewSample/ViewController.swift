//
//  ViewController.swift
//  ChangeViewSample
//
//  Created by okabe-miyuu on 2018/12/21.
//  Copyright © 2018年 okabe-miyuu. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var container:UIView!
    let redView:UIView = UINib(nibName: "RedView", bundle:nil).instantiate(withOwner: self, options: nil)[0] as! UIView
    let blueView:UIView = UINib(nibName: "BlueView", bundle:nil).instantiate(withOwner: self, options: nil)[0] as! UIView
    var changeFlag = false
    
    override func viewDidLoad() {
        super.viewDidLoad()
        changeView()
    }
    
    
    func changeView() {
        let width = self.container.bounds.size.width
        let height = self.container.bounds.size.height
        let frame = CGRect(x:0, y:0, width:width, height:height)
        if changeFlag {
            blueView.removeFromSuperview()
            redView.frame = frame
            container.addSubview(redView)
            changeFlag = false
        } else {
            redView.removeFromSuperview()
            blueView.frame = frame
            container.addSubview(blueView)
            changeFlag = true
        }
    }
    
    @IBAction func click(sender:AnyObject){
        changeView()
    }
}

