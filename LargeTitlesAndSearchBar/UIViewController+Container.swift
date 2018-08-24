//
//  UIViewController+Container.swift
//  LargeTitlesAndSearchBar
//
//  Created by Julian Caicedo on 24.08.18.
//  Copyright © 2018 Julian Caicedo. All rights reserved.
//

import UIKit

extension UIViewController {
  
  func add(viewController: UIViewController) {
    addChildViewController(viewController)
    viewController.view.translatesAutoresizingMaskIntoConstraints = false
    self.view.addSubview(viewController.view)
    NSLayoutConstraint.activate([
      viewController.view.leadingAnchor.constraint(equalTo: self.view.leadingAnchor, constant: 0),
      viewController.view.trailingAnchor.constraint(equalTo: self.view.trailingAnchor, constant: 0),
      viewController.view.topAnchor.constraint(equalTo: self.view.topAnchor, constant: 0),
      viewController.view.bottomAnchor.constraint(equalTo: self.view.bottomAnchor, constant: 0)
      ])
    viewController.didMove(toParentViewController: self)
  }
  
  func remove() {
    self.willMove(toParentViewController: nil)
    self.view.removeFromSuperview()
    self.removeFromParentViewController()
  }
  
}
