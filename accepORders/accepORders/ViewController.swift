//
//  ViewController.swift
//  accepORders
//
//  Created by Ruslan Dalgatov on 30.09.2021.
//

import UIKit
import SnapKit

class ViewController: UIViewController {

    let buttonStart = UIButton()
    let labelSingIn = UILabel()
    let emailField = UITextField()
    let passwordField = UITextField()
    let labelBR = UILabel()
    let lineView = UIView()
    let labelEmail = UILabel()
    let labelPassw = UILabel()
    let lineView2 = UIView()
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
        view.addSubview(labelBR)
        view.addSubview(buttonStart)
        view.addSubview(labelSingIn)
        view.addSubview(emailField)
        view.addSubview(passwordField)
        view.addSubview(labelEmail)
        view.addSubview(labelPassw)
        view.addSubview(lineView)
        view.addSubview(lineView2)

        
        let titlecolor = UIColor(displayP3Red: 240/255, green: 105/255, blue: 100/255, alpha: 1)
        let buttoncolor = UIColor(displayP3Red: 247/255, green: 95/255, blue: 106/255, alpha: 1)

        labelBR.text = "Добро пожаловать"
        labelBR.textColor = titlecolor
        labelBR.layer.borderWidth = 1
        labelBR.textAlignment = .center
        labelBR.backgroundColor = .white
        labelBR.snp.makeConstraints { maker in
            maker.width.equalTo(180)
            maker.height.equalTo(70)
            maker.top.equalTo(80)
            maker.centerX.equalToSuperview()
        }
        
        labelSingIn.text = "Sing In"
        labelSingIn.font = UIFont.boldSystemFont(ofSize: 23)
        labelSingIn.snp.makeConstraints { maker in
            maker.top.equalTo(labelBR).inset(150)
            maker.centerX.equalToSuperview()
            maker.width.equalTo(300)
        }
        
        labelEmail.text = "Email"
        labelEmail.font = UIFont.boldSystemFont(ofSize: 12)
        labelEmail.textColor = titlecolor
        labelEmail.snp.makeConstraints { maker in
            maker.top.equalTo(labelSingIn).inset(45)
            maker.centerX.equalToSuperview()
            maker.width.equalTo(300)
            
        }
        
        emailField.text = "example@email.com"
        emailField.clearButtonMode = .whileEditing
        emailField.snp.makeConstraints { maker in
            maker.top.equalTo(labelEmail).inset(25)
            maker.centerX.equalToSuperview()
            maker.width.equalTo(300)

            
        }
        
        lineView.backgroundColor = .gray
        lineView.snp.makeConstraints { maker in
            maker.centerX.equalToSuperview()
            maker.width.equalTo(emailField)
            maker.height.equalTo(1)
            maker.bottom.equalTo(emailField).inset(-10)
        }
        
        labelPassw.text = "Password"
        labelPassw.font = UIFont.boldSystemFont(ofSize: 12)
        labelPassw.textColor = titlecolor
        labelPassw.snp.makeConstraints { maker in
            maker.top.equalTo(lineView).inset(45)
            maker.centerX.equalToSuperview()
            maker.width.equalTo(300)
        }
        
        passwordField.text = "12345678"
        passwordField.isSecureTextEntry = true
        passwordField.clearButtonMode = .whileEditing
        passwordField.snp.makeConstraints { maker in
            maker.top.equalTo(labelPassw).inset(25)
            maker.centerX.equalToSuperview()
            maker.width.equalTo(300)

        }
        
        lineView2.backgroundColor = .gray
        lineView2.snp.makeConstraints { maker in
            maker.centerX.equalTo(lineView)
            maker.width.equalTo(300)
            maker.height.equalTo(1)
            maker.bottom.equalTo(passwordField).inset(-10)
        }
        
        
        
        buttonStart.setTitle("Войти", for: .normal)
        buttonStart.backgroundColor = buttoncolor
        buttonStart.layer.cornerRadius = 5
        buttonStart.titleLabel?.font = UIFont.boldSystemFont(ofSize: 16)
        buttonStart.snp.makeConstraints { maker in
            maker.top.equalTo(passwordField).inset(100)
            maker.width.equalTo(300)
            maker.height.equalTo(50)
            maker.centerX.equalToSuperview()
        }
        buttonStart.addTarget(self, action: #selector(openNextView), for: .touchUpInside)

        
    }


    @objc func openNextView(){
       

        
        let rootVC = OrderViewController()
        let nacVC = UINavigationController(rootViewController: rootVC)
        nacVC.modalPresentationStyle = .fullScreen
        present(nacVC, animated: true)

        
    }
    
}

