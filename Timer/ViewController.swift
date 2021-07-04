//
//  ViewController.swift
//  Timer
//
//  Created by Nursultan Karybekov on 2/7/21.
//

import UIKit

class ViewController: UIViewController {
    
    private let loginContentView:UIView = {
      let view = UIView()
      view.backgroundColor = .white
      view.translatesAutoresizingMaskIntoConstraints = false
      return view
    }()
    
    private let unameTxtField:UITextField = {
        let txtField = UITextField()
        txtField.backgroundColor = .white
        txtField.attributedPlaceholder = NSAttributedString(string: "Timer's Name",
                                                                    attributes: [NSAttributedString.Key.foregroundColor: UIColor.gray])
        txtField.borderStyle = .roundedRect
        txtField.translatesAutoresizingMaskIntoConstraints = false
        return txtField
    }()
    
    private let pwordTxtField:UITextField = {
        let txtField = UITextField()
        txtField.backgroundColor = .white
        txtField.placeholder = "Time in Seconds"
        txtField.attributedPlaceholder = NSAttributedString(string: "Time in Seconds",
                                                            attributes: [NSAttributedString.Key.foregroundColor: UIColor.gray])
        txtField.borderStyle = .roundedRect
        txtField.translatesAutoresizingMaskIntoConstraints = false
        return txtField
    }()
    
    let btnLogin:UIButton = {
        let btn = UIButton(type:.system)
        btn.backgroundColor = .systemGray5
        btn.setTitle("Add Timer", for: .normal)
        btn.titleLabel?.font = UIFont.boldSystemFont(ofSize: 16)
        btn.tintColor = .systemBlue
        btn.layer.cornerRadius = 12
        btn.clipsToBounds = true
        btn.translatesAutoresizingMaskIntoConstraints = false
        btn.translatesAutoresizingMaskIntoConstraints = false
        return btn
    }()
    
    func setUpAutoLayout() {
        // Login Wrapper Contraints
        loginContentView.leftAnchor.constraint(equalTo:view.leftAnchor).isActive = true
        loginContentView.rightAnchor.constraint(equalTo:view.rightAnchor).isActive = true
        
        loginContentView.heightAnchor.constraint(equalToConstant: view.frame.height/3).isActive = true
        
        loginContentView.centerYAnchor.constraint(equalTo: view.centerYAnchor).isActive = true
        
        // Username TextField Contraints
        unameTxtField.topAnchor.constraint(equalTo:loginContentView.topAnchor, constant: 40).isActive = true
        
        unameTxtField.leftAnchor.constraint(equalTo:loginContentView.leftAnchor, constant:20).isActive = true
        unameTxtField.rightAnchor.constraint(equalTo:loginContentView.rightAnchor, constant:-20).isActive = true
        
        unameTxtField.heightAnchor.constraint(equalToConstant:50).isActive = true
        
        // Password TextField Contraints
        pwordTxtField.leftAnchor.constraint(equalTo:loginContentView.leftAnchor, constant:20).isActive = true
        pwordTxtField.rightAnchor.constraint(equalTo:loginContentView.rightAnchor, constant:-20).isActive = true
        
        pwordTxtField.heightAnchor.constraint(equalToConstant:50).isActive = true
        
        pwordTxtField.topAnchor.constraint(equalTo:unameTxtField.bottomAnchor, constant:20).isActive = true
        
        // Button Contraints Contraints
        btnLogin.topAnchor.constraint(equalTo:pwordTxtField.bottomAnchor, constant:20).isActive = true
        btnLogin.leftAnchor.constraint(equalTo:loginContentView.leftAnchor, constant:20).isActive = true
        btnLogin.rightAnchor.constraint(equalTo:loginContentView.rightAnchor, constant:-20).isActive = true
        btnLogin.heightAnchor.constraint(equalToConstant:50).isActive = true
        
        
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
       
        
        view.backgroundColor = .systemRed
        
        loginContentView.addSubview(unameTxtField)
        loginContentView.addSubview(pwordTxtField)
        loginContentView.addSubview(btnLogin)
        
        view.addSubview(loginContentView)
        title = "Registration form"
        setUpAutoLayout()
    }

    

}

