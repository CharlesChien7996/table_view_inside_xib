//
//  ViewController.swift
//  TableViewIntoXib
//
//  Created by jackercleaning on 2018/11/19.
//  Copyright © 2018 Charles Chien. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var label: UILabel!
    @IBOutlet weak var xibView: View!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        let nib = UINib(nibName: "TableViewCell", bundle: nil)
        xibView.tableView.register(nib, forCellReuseIdentifier: "cell")
        xibView.tableView.dataSource = self
        xibView.tableView.delegate = self
        // Do any additional setup after loading the view, typically from a nib.
    }

    @IBAction func showXibViewButtonClick(_ sender: Any) {
        xibView.isHidden = false
    }
    
}

extension ViewController: UITableViewDataSource, UITableViewDelegate {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 10
    }
    
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath) as! TableViewCell
        cell.button.setTitle("\(indexPath.row)", for: .normal)
        cell.onButtonClick = {
            self.xibView.isHidden = true
            self.label.text = "The number you select : \(cell.button.titleLabel!.text!)"
        }
        return cell
    }
    
    
//    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
//        let cell = tableView.cellForRow(at: indexPath) as! TableViewCell
//        label.text = cell.button.titleLabel?.text
//        xibView.isHidden = true
//
//    }
}

