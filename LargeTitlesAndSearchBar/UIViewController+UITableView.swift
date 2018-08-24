//
//  UIViewController+UITableView.swift
//  LargeTitlesAndSearchBar
//
//  Created by Julian Caicedo on 24.08.18.
//  Copyright © 2018 Julian Caicedo. All rights reserved.
//

import UIKit

extension UIViewController: UITableViewDataSource {
  
  public func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
    return 100
  }
  
  public func numberOfSections(in tableView: UITableView) -> Int {
    return 1
  }
  
  public func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
    return "Group Name"
  }
  
  public func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
    let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
    cell.textLabel?.text = "Row"
    return cell
  }
  
}

extension UIViewController: UITableViewDelegate {
  
  public func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
    return 60.0
  }
  
}
