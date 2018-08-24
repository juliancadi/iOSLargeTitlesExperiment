//
//  FifthViewController.swift
//  LargeTitlesAndSearchBar
//
//  Created by Julian Caicedo on 24.08.18.
//  Copyright © 2018 Julian Caicedo. All rights reserved.
//

import UIKit

class FifthViewController: UIViewController {
  
  override func viewDidLoad() {
    super.viewDidLoad()
    let storyboard = UIStoryboard(name: "Main", bundle: nil)
    let controller = storyboard.instantiateViewController(withIdentifier: "thirdViewController")
    add(viewController: controller)
    
    navigationItem.title = "XIB CONTAINER"
    navigationItem.rightBarButtonItem = UIBarButtonItem(barButtonSystemItem: .fastForward, target: self, action: #selector(tappedNext))
    
    if #available(iOS 11.0, *) {
      navigationItem.largeTitleDisplayMode = .always
    }
  }
  
  @IBAction func tappedNext() {
    self.show(SixthViewController(), sender: nil)
  }

}
