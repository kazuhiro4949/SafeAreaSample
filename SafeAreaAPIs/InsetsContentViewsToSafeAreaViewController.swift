//
//  InsetsContentViewsToSafeAreaViewController.swift
//  SafeAreaAPIs
//
//  Copyright © 2017年 Personal. All rights reserved.
//

import UIKit

class InsetsContentViewsToSafeAreaViewController: UIViewController, UITableViewDataSource {
    @IBOutlet weak var tableView: UITableView!
    
    let data: [String] = ["🐶","😺","🐵","🐰"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.insetsContentViewsToSafeArea = false
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return data.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "identifier", for: indexPath) as! InsetsContentViewsToSafeAreaTableViewCell
        cell.nameLabel?.text = data[indexPath.row]
        return cell
    }

}
