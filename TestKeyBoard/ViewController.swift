//
//  ViewController.swift
//  TestKeyBoard
//
//  Created by Geek on 2020/1/1.
//  Copyright © 2020 myself. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var myTableView: UITableView!
    let identifier = "SwiftCell"
    var dataArray:Array<String>!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        dataArray = Array<String>()
        for i in 0...50 {
            let str = "第\(i)个Cell"
            dataArray.append(str)
        }
        
        myTableView.delegate = self
        myTableView.dataSource = self
        myTableView.register(UITableViewCell.classForCoder(), forCellReuseIdentifier: identifier)
    }

    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        super.touchesBegan(touches, with: event)
        self.view.endEditing(true)
    }

}

extension ViewController:UITableViewDelegate,UITableViewDataSource{

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return dataArray.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
                let cell = tableView.dequeueReusableCell(withIdentifier: identifier, for: indexPath)
        cell.textLabel?.text = self.dataArray[indexPath.row]
        cell.selectionStyle = .none //点击后背景颜色无变化
        return cell
    }

    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        self.view.endEditing(true)
        print("section:\(indexPath.section),  row:\(indexPath.row)")
    }
}
