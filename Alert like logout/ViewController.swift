//
//  ViewController.swift
//  Alert like logout
//
//  Created by Apple on 5/3/19.
//  Copyright © 2019 Monkey iDesign. All rights reserved.
//  site: www.monkeyidesign.com
//  tel: +85592 200069

import UIKit

class ViewController: UIViewController {
    
    let Logout: UIButton = {
        let btn = UIButton(type: .system)
        btn.setTitle("Logout", for: .normal)
        btn.backgroundColor = UIColor(red: 68/255, green: 142/255, blue: 246/255, alpha:1.0)
        btn.titleLabel?.font = UIFont.boldSystemFont(ofSize: 18)
        btn.layer.cornerRadius = 5
        btn.setTitleColor(.white, for: .normal)
        btn.translatesAutoresizingMaskIntoConstraints = false
        btn.addTarget(self, action: #selector(logoutAlert), for: .touchUpInside)
   
        return btn
    }()
    @objc func logoutAlert(){
        let alertController = UIAlertController(title: nil, message: nil, preferredStyle: .actionSheet)
        
        alertController.addAction(UIAlertAction(title: "Logout", style: .destructive, handler: { (_) in
            print("Perform logout")
            self.Logout.setTitle("Sign In", for: .normal)
        }))
        
        alertController.addAction(UIAlertAction(title: "Cancel", style: .cancel, handler: nil))
        
        present(alertController, animated: true, completion: nil)
        
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        view.addSubview(Logout)
        
        Logout.anchor(top: view.topAnchor, left: view.leftAnchor, bottom: nil, right: view.rightAnchor, paddingTop: 100, paddingLeft: 15, paddingBottom: 0, paddingRight: 15, width: 200, height: 40)
    }


}

