//
//  SixthViewController.swift
//  LargeTitlesAndSearchBar
//
//  Created by Julian Caicedo on 24.08.18.
//  Copyright © 2018 Julian Caicedo. All rights reserved.
//

import UIKit

class SixthViewController: UIViewController {
  
  private lazy var stateViewController = ContentStateViewController()

  override func viewDidLoad() {
    super.viewDidLoad()
    add(viewController: stateViewController)
    
    navigationItem.title = "XIB CONTENT STATE"
    
    if #available(iOS 11.0, *) {
      navigationItem.largeTitleDisplayMode = .always
    }
  }

}
