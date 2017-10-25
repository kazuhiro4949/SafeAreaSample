//
//  SafeAreaInsetsViewController.swift
//  SafeAreaAPIs
//
//  Copyright © 2017年 Personal. All rights reserved.
//

import UIKit

class SafeAreaInsetsViewController: UIViewController {
    @IBOutlet weak var _view: UIView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }

    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()
        _view.frame = UIEdgeInsetsInsetRect(view.bounds, view.safeAreaInsets)
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
    }
    
    override func viewSafeAreaInsetsDidChange() {
        super.viewSafeAreaInsetsDidChange()
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
    }
    
    override func viewWillLayoutSubviews() {
        super.viewWillLayoutSubviews()
    }
    
    override func updateViewConstraints() {
        super.updateViewConstraints()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
}


class View: UIView {
    override func updateConstraints() {
        super.updateConstraints()
    }
    
    override func layoutSubviews() {
        super.layoutSubviews()
    }
    
    override func safeAreaInsetsDidChange() {
        super.safeAreaInsetsDidChange()
    }
}
