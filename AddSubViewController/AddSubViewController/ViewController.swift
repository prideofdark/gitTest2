//
//  ViewController.swift
//  AddSubViewController
//
//  Created by Gun Lee on 2020/06/05.
//  Copyright © 2020 Gun Lee. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var scrollV: UIScrollView!
    let scrollView = UIScrollView() // Create the scrollView
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
//        scrollView.frame = self.view.frame
//        self.scrollView.isPagingEnabled = true
//        self.view.addSubview(scrollView)
        
        // Do any additional setup after loading the view.
        
//        let addViewController = self.storyboard?.instantiateViewController(withIdentifier: "SubView") as! SubViewController
//        
//        self.addChild(addViewController)
//        //            self.view.addSubview(addViewController.view)
//        
//        addViewController.view.frame  = CGRect(x: 0, y: 0, width: 300  , height: 500)
//        self.scrollV.addSubview(addViewController.view)
    }
    
    override func viewDidAppear(_ animated: Bool) {
//        scrollView.frame = self.view.frame
//        self.scrollView.isPagingEnabled = true
//        self.view.addSubview(scrollView)
//        
//        let addViewController = self.storyboard?.instantiateViewController(withIdentifier: "SubView") as! SubViewController
//
//        self.addChild(addViewController)
//        //            self.view.addSubview(addViewController.view)
//
//        addViewController.view.frame  = CGRect(x: 0, y: 0, width: 300  , height: 500)
////        addViewController.view.isUserInteractionEnabled = false
//        self.view.isUserInteractionEnabled = true
//        self.scrollV.addSubview(addViewController.view)
//        
//        let keyWindow = UIApplication.shared.connectedScenes
//        .filter({$0.activationState == .foregroundActive})
//        .map({$0 as? UIWindowScene})
//        .compactMap({$0})
//        .first?.windows
//        .filter({$0.isKeyWindow}).first
//        
////        let window: UIView? = UIApplication.shared.keyWindow;
//
//        keyWindow?.addSubview(addViewController.view);
    }

    @IBAction func mainBtnAction(_ sender: Any) {
        print("mainBtn")
        
        let storyboard = UIStoryboard(name: "TestStoryboard", bundle: nil)
        
//        let addViewController = storyboard.instantiateViewController(withIdentifier: "SubView") as! ATestViewController
        let addViewController = self.storyboard?.instantiateViewController(withIdentifier: "SubView") as! SubViewController

        self.addChild(addViewController)
        //            self.view.addSubview(addViewController.view)

        addViewController.view.frame  = CGRect(x: 0, y: 0, width: 300  , height: 500)
        self.scrollV.addSubview(addViewController.view)
    }
    
}

