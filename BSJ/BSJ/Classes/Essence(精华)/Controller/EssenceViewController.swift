//
//  EssenceViewController.swift
//  BSJ
//
//  Created by usee on 2017/11/22.
//  Copyright © 2017年 tax. All rights reserved.
//

import UIKit

class EssenceViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        //初始化UI
        setupUI()
    }

}
// MARK: - 初始化UI
extension EssenceViewController{
    private func setupUI(){
        //初始化导航栏
        setupNav()
        //初始化PageView
        setupPageView()
    }
    ///初始化PageView
    private func setupNav(){
        navigationItem.titleView = UIImageView(image: UIImage(named: "MainTitle"))
        navigationItem.leftBarButtonItem = UIBarButtonItem(image: UIImage(named: "MainTagSubIcon"), highlightImage: UIImage(named: "MainTagSubIconClick"), target: self, action: #selector(leftBtnClick))
    }
    
    private func setupPageView(){
        
        automaticallyAdjustsScrollViewInsets = false
        
        // 1.标题
        let titles = ["视频", "声音", "图片", "段子"]
        let style = HYTitleStyle()
        style.isShowScrollLine = true
        // 2.所以的子控制器
        var childVcs = [UIViewController]()
        let videoVc = VideoViewController()
        childVcs.append(videoVc)
        for _ in 0..<titles.count - 1 {
            let vc = UIViewController()
            vc.view.backgroundColor = UIColor.randomColor()
            childVcs.append(vc)
        }
        
        // 3.pageView的frame
        let pageFrame =  CGRect(x: 0, y: kNavH, width: view.bounds.width, height: kScreenH - kNavH)
        
        // 4.创建HYPageView,并且添加到控制器的view中
        let pageView = HYPageView(frame: pageFrame, titles: titles, childVcs: childVcs, parentVc: self, style : style)
        view.addSubview(pageView)
    }
    
}

extension EssenceViewController{
    @objc private func leftBtnClick(){
        print("左边按钮点击")
    }
}

