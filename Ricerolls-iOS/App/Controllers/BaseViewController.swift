//
//  BaseViewController.swift
//  Ricerolls-iOS
//
//  Created by Chawler on 16/6/15.
//  Copyright © 2016年 郑先生. All rights reserved.
//

import UIKit

class BaseViewController: UIViewController {
    
    var navBarHidden = false
    
    var navBarBackImage = UIImage()
    var navBarShadowImage = UIImage()
    
    func config() {
        self.view.backgroundColor = UIColor.whiteColor()
    }
    
    func setupViews() {
        
    }
    
    func autolayout() {
        
    }
    
    func pushControllerHideBottomBar(controller: UIViewController, title: String = "") {
        if title.length > 0 {
            controller.title = title
        }
        controller.hidesBottomBarWhenPushed = true
        self.navigationController?.pushViewController(controller, animated: true)
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        config()
        setupViews()
        autolayout()
        // Do any additional setup after loading the view.
    }
    
    override func viewWillAppear(animated: Bool) {
        super.viewWillAppear(animated)
        
        if navBarHidden {
            self.navigationController?.navigationBar.setBackgroundImage(navBarBackImage, forBarMetrics: .Default)
            self.navigationController?.navigationBar.shadowImage = navBarShadowImage
        }
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
