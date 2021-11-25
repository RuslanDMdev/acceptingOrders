//
//  CheksViewController.swift
//  accepORders
//
//  Created by Ruslan Dalgatov on 07.10.2021.
//

import UIKit

class CheksViewController: UIViewController {
    
    var orders = [ Orders(FIO: " ", tableNum: " ", numOfGuests: " ") ]
    
    private var data = ["Ios", "Android", "Hello", "Google", "hi", "Stive", "Yhooy", "Bing", "Yandex", "Sber"]
   
    let tableView = UITableView.init(frame: .zero, style: UITableView.Style.grouped)
   
    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.backgroundColor = UIColor.white
        self.navigationItem.title = "Чеки"
        self.navigationController?.navigationBar.prefersLargeTitles = true
        navigationItem.leftBarButtonItem = UIBarButtonItem(title: "Назад", style: .plain, target: self, action: #selector(somefunc))
        
        self.view.addSubview(self.tableView)
        self.tableView.register(OrderTableViewCell.self, forCellReuseIdentifier: "OrderTableViewCell")
        self.tableView.dataSource = self
        
        self.updateLayout(with: self.view.frame.size)
        
    }
    
    private func updateLayout(with size: CGSize) {
        self.tableView.frame = CGRect.init(origin: .zero, size: size)
     }
    
     override func viewWillTransition(to size: CGSize, with coordinator: UIViewControllerTransitionCoordinator) {
        super.viewWillTransition(to: size, with: coordinator)
        coordinator.animate(alongsideTransition: { (contex) in
           self.updateLayout(with: size)
        }, completion: nil)
     }
    
    @objc func somefunc(){
        let rootVC = OrderViewController()
        let nacVC = UINavigationController(rootViewController: rootVC)
        nacVC.modalPresentationStyle = .fullScreen
        present(nacVC, animated: true)
    }

    
}

extension CheksViewController: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return data.count
    }
    
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "OrderTableViewCell", for: indexPath)
        cell.textLabel?.text = self.data[indexPath.row]
        return cell
    }
    
}

