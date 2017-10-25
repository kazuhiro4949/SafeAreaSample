//
//  SafeAreaLayoutGuideViewController.swift
//  SafeAreaAPIs
//
//  Copyright © 2017年 Personal. All rights reserved.
//

import UIKit

class SafeAreaLayoutGuideViewController: UIViewController {
    @IBOutlet weak var _view: UIView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        _view.translatesAutoresizingMaskIntoConstraints = false
        _view.topAnchor.constraint(
            equalTo: view.safeAreaLayoutGuide.topAnchor
            ).isActive = true
        _view.bottomAnchor.constraint(
            equalTo: view.safeAreaLayoutGuide.bottomAnchor
            ).isActive = true
        _view.trailingAnchor.constraint(
            equalTo: view.safeAreaLayoutGuide.trailingAnchor
            ).isActive = true
        _view.leadingAnchor.constraint(
            equalTo: view.safeAreaLayoutGuide.leadingAnchor
            ).isActive = true
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
