//
//  ViewController.swift
//  LargeTitlesAndSearchBar
//
//  Created by Julian Caicedo on 23.08.18.
//  Copyright © 2018 Julian Caicedo. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

  @IBOutlet weak var tableView: UITableView!
  
  override func viewDidLoad() {
    super.viewDidLoad()
    tableView.register(UITableViewCell.self, forCellReuseIdentifier: "cell")
    tableView.delegate = self
    tableView.dataSource = self
    
    if #available(iOS 11.0, *) {
      navigationController?.navigationBar.prefersLargeTitles = true
    }
  }

}
