//
//  MainViewController.swift
//  snippets
//
//  Created by Maverick b on 2021/02/27.
//

import UIKit

class MainViewController: UIViewController {
    private lazy var tableView: UITableView = {
        let tv = UITableView(frame: self.view.bounds)
        tv.autoresizingMask = [.flexibleWidth, .flexibleHeight]
        tv.dataSource = self
        tv.backgroundColor = .white
        return tv
    }()

    override func loadView() {
        super.loadView()
        
        view.addSubview(tableView)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
}

extension MainViewController: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = UITableViewCell(style: .default, reuseIdentifier: nil)
        cell.textLabel?.text = "hello world"
        return cell
    }
}
