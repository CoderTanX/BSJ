//
//  TabBarViewController.swift
//  BSJ
//
//  Created by usee on 2017/11/22.
//  Copyright © 2017年 tax. All rights reserved.
//

import UIKit

class TabBarViewController: UITabBarController {
    //懒加载发布按钮
    private lazy var publishBtn :UIButton = UIButton(type: .custom)
    
    override func viewDidLoad() {
        super.viewDidLoad()
        //初始化发布按钮
        setupPublishBtn();
    }
}
// MARK: -setupUI
extension TabBarViewController{
    private func setupPublishBtn(){
        publishBtn.setImage(UIImage(named: "tabBar_publish_icon"), for: .normal)
        publishBtn.setImage(UIImage(named: "tabBar_publish_click_icon"), for: .highlighted)
        publishBtn.sizeToFit()
        publishBtn.center = CGPoint(x: tabBar.center.x, y: tabBar.bounds.height*0.5)
        publishBtn.addTarget(self, action: #selector(publishBtnClick), for: .touchUpInside)
        tabBar.addSubview(publishBtn)
    }
}

extension TabBarViewController{
    @objc private func publishBtnClick(){
        print("publishBtnClick")
    }
}

