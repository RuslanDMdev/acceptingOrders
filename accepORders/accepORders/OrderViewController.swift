//
//  OrderViewController.swift
//  accepORders
//
//  Created by Ruslan Dalgatov on 30.09.2021.
//

import UIKit

class OrderViewController: UIViewController {

    let labelFIO = UILabel()
    let fioField = UITextField()
    let labelCountOfGuest = UILabel()
    let guestField = UITextField()
    let labelTableNumer = UILabel()
    let tableNumField = UITextField()
    let lineView1 = UIView()
    let lineView2 = UIView()
    let lineView3 = UIView()
    let buttonAdd = UIButton()

    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.addSubview(labelFIO)
        view.addSubview(fioField)
        view.addSubview(labelCountOfGuest)
        view.addSubview(guestField)
        view.addSubview(labelTableNumer)
        view.addSubview(tableNumField)
        view.addSubview(lineView1)
        view.addSubview(lineView2)
        view.addSubview(lineView3)
        view.addSubview(buttonAdd)


        view.backgroundColor = .white
    
        navigationItem.leftBarButtonItem  = UIBarButtonItem(title: "Назад", style: .plain, target: self, action: #selector(openNextView))
        navigationItem.rightBarButtonItem = UIBarButtonItem(title: "Чеки", style: .plain, target: self, action: #selector(openNextView))
        navigationItem.title = "Cafe"
        
        let titlecolor = UIColor(displayP3Red: 240/255, green: 105/255, blue: 100/255, alpha: 1)

        labelFIO.text = "Фио"
        labelFIO.font = UIFont.boldSystemFont(ofSize: 12)
        labelFIO.textColor = titlecolor
        labelFIO.snp.makeConstraints { maker in
            maker.top.equalTo(250)
            maker.centerX.equalToSuperview()
            maker.width.equalTo(300)
        }
        
        fioField.text = "Количество гостей"
        fioField.snp.makeConstraints { make in
            make.top.equalTo(labelFIO).inset(30)
            make.centerX.equalToSuperview()
            make.width.equalTo(300)
        }
        
        lineView1.backgroundColor = .gray
        lineView1.snp.makeConstraints { maker in
            maker.centerX.equalToSuperview()
            maker.width.equalTo(fioField)
            maker.height.equalTo(1)
            maker.bottom.equalTo(fioField).inset(-10)
        }
        
        labelCountOfGuest.text = "Введите количество"
        labelCountOfGuest.font = UIFont.boldSystemFont(ofSize: 12)
        labelCountOfGuest.textColor = titlecolor
        labelCountOfGuest.snp.makeConstraints { maker in
            maker.top.equalTo(lineView1).inset(30)
            maker.centerX.equalToSuperview()
            maker.width.equalTo(300)
        }
        
        guestField.text = "Номер стола"
        guestField.snp.makeConstraints { make in
            make.top.equalTo(labelCountOfGuest).inset(30)
            make.centerX.equalToSuperview()
            make.width.equalTo(300)
        }
        
        lineView2.backgroundColor = .gray
        lineView2.snp.makeConstraints { maker in
            maker.centerX.equalToSuperview()
            maker.width.equalTo(guestField)
            maker.height.equalTo(1)
            maker.bottom.equalTo(guestField).inset(-10)
        }
        
        labelTableNumer.text = "Стол номер"
        labelTableNumer.font = UIFont.boldSystemFont(ofSize: 12)
        labelTableNumer.textColor = titlecolor
        labelTableNumer.snp.makeConstraints { maker in
            maker.top.equalTo(lineView2).inset(30)
            maker.centerX.equalToSuperview()
            maker.width.equalTo(300)
        }
        
        tableNumField.text = "Введите фио"
        tableNumField.snp.makeConstraints { make in
            make.top.equalTo(labelTableNumer).inset(30)
            make.centerX.equalToSuperview()
            make.width.equalTo(300)
        }
        
        lineView3.backgroundColor = .gray
        lineView3.snp.makeConstraints { maker in
            maker.centerX.equalToSuperview()
            maker.width.equalTo(tableNumField)
            maker.height.equalTo(1)
            maker.bottom.equalTo(tableNumField).inset(-10)
        }
        
        
        buttonAdd.setTitle("Выставить чек", for: .normal)
        buttonAdd.backgroundColor = titlecolor
        buttonAdd.layer.cornerRadius = 5
        buttonAdd.titleLabel?.font = UIFont.boldSystemFont(ofSize: 16)
        buttonAdd.snp.makeConstraints { maker in
            maker.top.equalTo(lineView3).inset(100)
            maker.width.equalTo(300)
            maker.height.equalTo(50)
            maker.centerX.equalToSuperview()
        }
        buttonAdd.addTarget(self, action: #selector(openNextView), for: .touchUpInside)
        
        
    }
    
    @objc func openNextView(){
       
        let rootVC = ViewController()
        rootVC.modalPresentationStyle = .fullScreen
        present(rootVC, animated: true)
        
        

        
    }

}
