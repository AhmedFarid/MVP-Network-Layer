//
//  UserDetailsViewPresenter.swift
//  MVP
//
//  Created by Farido on 10/04/2022.
//

import Foundation

protocol UserDetailsView: AnyObject {
  var presenter: UserDetailsViewPresenter? {set get}
  func showIndicator()
  func hideIndicator()
  func displayName(name: String)
  func displayEmail(email: String)
  func showError(error: String)
}

class UserDetailsViewPresenter {
  private weak var view: UserDetailsView?
  private var user: User
  
  init(view: UserDetailsView,user:User) {
    self.view = view
    self.user = user
  }
  
  func viewDidLoad() {
    view?.displayName(name: user._name)
    view?.displayEmail(email: user._email)
  }
}
