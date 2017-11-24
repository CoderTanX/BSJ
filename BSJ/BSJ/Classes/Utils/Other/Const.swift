//
//  Const.swift
//  BSJ
//
//  Created by usee on 2017/11/23.
//  Copyright © 2017年 tax. All rights reserved.
//

import UIKit

/// 屏幕高度
let kScreenH = UIScreen.main.bounds.height
/// 屏幕宽度
let kScreenW = UIScreen.main.bounds.width
/// 是否是iphoneX
let isPhoneX: Bool = kScreenH == 812 ? true : false
///导航条高度
let kNavH: CGFloat = isPhoneX ? 88 : 64
///全局背景颜色
let kGlobalBgColor = UIColor(hex: "f4f4f4")
