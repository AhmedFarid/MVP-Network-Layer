//
//  UserDertials+ Presenter.swift
//  MVP
//
//  Created by Farido on 11/04/2022.
//

import UIKit

extension UserDetailsViewVC: UserDetailsView {
  func showIndicator() {
    print("loading")
  }
  
  func hideIndicator() {
    print("stop")
  }
  
  func displayName(name: String) {
    titleTextFiled.text = name
  }
  
  func displayEmail(email: String) {
    emailTextFiled.text = email
  }
  
  func showError(error: String) {
    print(error)
  }
}
