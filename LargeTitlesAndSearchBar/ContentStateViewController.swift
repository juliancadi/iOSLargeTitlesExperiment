//
//  ContentStateViewController.swift
//  LargeTitlesAndSearchBar
//
//  Created by Julian Caicedo on 24.08.18.
//  Copyright © 2018 Julian Caicedo. All rights reserved.
//

import UIKit

class ContentStateViewController: UIViewController {
  
  private var shownViewController: UIViewController?

  override func viewDidLoad() {
    super.viewDidLoad()
    
    shownViewController = UIViewController()
    add(viewController: shownViewController!)
  }
  
  override func viewDidAppear(_ animated: Bool) {
    super.viewDidAppear(animated)
    shownViewController?.remove()
    let storyboard = UIStoryboard(name: "Main", bundle: nil)
    let controller = storyboard.instantiateViewController(withIdentifier: "thirdViewController")
    add(viewController: controller)
    shownViewController = controller
  }

}
