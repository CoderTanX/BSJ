//
//  UIBarButtonItem-Extension.swift
//  BSJ
//
//  Created by usee on 2017/11/22.
//  Copyright © 2017年 tax. All rights reserved.
//

import UIKit

extension UIBarButtonItem{
    convenience init(image: UIImage?,highlightImage: UIImage?, target: Any?, action: Selector) {
        let btn = UIButton(type: .custom)
        btn.setImage(image, for: .normal)
        btn.setImage(highlightImage, for: .highlighted)
        btn.addTarget(target, action: action, for: .touchUpInside)
        btn.sizeToFit()
        self.init(customView: btn)
    }
}
