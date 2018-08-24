//
//  SecondViewController.swift
//  LargeTitlesAndSearchBar
//
//  Created by Julian Caicedo on 23.08.18.
//  Copyright © 2018 Julian Caicedo. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController {
  
  override func viewDidLoad() {
    super.viewDidLoad()
    
    if #available(iOS 11.0, *) {
      navigationController?.navigationBar.prefersLargeTitles = true
    }
  }
  
}
