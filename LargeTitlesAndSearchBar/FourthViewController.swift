//
//  FourthViewController.swift
//  LargeTitlesAndSearchBar
//
//  Created by Julian Caicedo on 24.08.18.
//  Copyright © 2018 Julian Caicedo. All rights reserved.
//

import UIKit

class FourthViewController: UIViewController {

  @IBOutlet weak var tableView: UITableView!
  
  override func viewDidLoad() {
    super.viewDidLoad()
    tableView.register(UITableViewCell.self, forCellReuseIdentifier: "cell")
    tableView.delegate = self
    tableView.dataSource = self
    
    navigationItem.title = "XIB NO CONTAINER"
    navigationItem.rightBarButtonItem = UIBarButtonItem(barButtonSystemItem: .fastForward, target: self, action: #selector(tappedNext))
    
    if #available(iOS 11.0, *) {
      navigationItem.largeTitleDisplayMode = .always
    }
  }
  
  @IBAction func tappedNext() {
    self.show(FifthViewController(), sender: nil)
  }
  
}
