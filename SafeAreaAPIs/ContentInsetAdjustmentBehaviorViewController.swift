//
//  ContentInsetAdjustmentBehaviorViewController.swift
//  SafeAreaAPIs
//
//  Copyright © 2017年 Personal. All rights reserved.
//

import UIKit

class ContentInsetAdjustmentBehaviorViewController: UIViewController {
    @IBOutlet weak var scrollView: UIScrollView!
    
    let _view: UIView = {
        let view = UIView(frame: .zero)
        view.backgroundColor = .red
        return view
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        _view.frame.size = CGSize(width: 400, height: 2000)
        scrollView.addSubview(_view)
        scrollView.contentInsetAdjustmentBehavior = .automatic
        _view.topAnchor.constraint(equalTo: scrollView.contentLayoutGuide.topAnchor).isActive = true
        _view.bottomAnchor.constraint(equalTo: scrollView.contentLayoutGuide.bottomAnchor).isActive = true
        _view.leadingAnchor.constraint(equalTo: scrollView.contentLayoutGuide.leadingAnchor).isActive = true
        _view.trailingAnchor.constraint(equalTo: scrollView.contentLayoutGuide.trailingAnchor).isActive = true
        
        
        // Do any additional setup after loading the view.
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        
        // adjustedContentInset
        print(scrollView.adjustedContentInset) // -> UIEdgeInsets(top: 44.0, left: 0.0, bottom: 34.0, right: 0.0)
        print(scrollView.contentInset) // -> UIEdgeInsets(top: 0.0, left: 0.0, bottom: 0.0, right: 0.0)
        scrollView.contentInset = UIEdgeInsets(top: 16, left: 16, bottom: 16, right: 16)
        print(scrollView.adjustedContentInset) // -> UIEdgeInsets(top: 60.0, left: 16.0, bottom: 50.0, right: 16.0)
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
