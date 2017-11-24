//
//  VideoViewController.swift
//  BSJ
//
//  Created by usee on 2017/11/23.
//  Copyright © 2017年 tax. All rights reserved.
//

import UIKit
private let topicViewCellID = "topicViewCellID"
class VideoViewController: UITableViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        setupUI()
    }
}
// MARK: -设置UI
extension VideoViewController{
    
    private func setupUI(){
        tableView.backgroundColor = kGlobalBgColor
        tableView.register(UINib(nibName: "TopicViewCell", bundle: nil), forCellReuseIdentifier: topicViewCellID)
        tableView.separatorStyle = .none
    }
    
}
// MARK: - Table view data source&delegate
extension VideoViewController{
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 3
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: topicViewCellID)
        return cell!
    }
    
    
}
