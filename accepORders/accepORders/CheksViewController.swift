//
//  CheksViewController.swift
//  accepORders
//
//  Created by Ruslan Dalgatov on 07.10.2021.
//

import UIKit

class CheksViewController: UIViewController {
    
    var orders = [ Orders(FIO: " ", tableNum: " ", numOfGuests: " ") ]
   

   
    override func viewDidLoad() {
        super.viewDidLoad()

        super.viewDidLoad()
        
        
      
        navigationItem.leftBarButtonItem = UIBarButtonItem(title: "Назад", style: .plain, target: self, action: #selector(somefunc))
        
        self.navigationItem.title = "Чеки"
        
    }

    
    @objc func somefunc(){
        let rootVC = OrderViewController()
        let nacVC = UINavigationController(rootViewController: rootVC)
        nacVC.modalPresentationStyle = .fullScreen
        present(nacVC, animated: true)
    }

    
}
