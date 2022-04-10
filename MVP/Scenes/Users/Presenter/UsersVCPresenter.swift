//
//  UsersVCPresenter.swift
//  MVP
//
//  Created by Farido on 14/01/2022.
//

import Foundation

protocol UsersView: AnyObject {
  var presenter: UsersVCPresenter? {get set}
  func showIndicator()
  func hideIndicator()
  func fetchingDataSuccess()
  func showError(error: String)
}

protocol UserCellView {
  func displayName(name: String)
  func displayAddress(address: String)
  func displayEmail(email: String)
  
}

class UsersVCPresenter {
  private weak var view: UsersView?
  private var interactor = UsersInteractor()
  private var router = UserVCRouter()
  
  private var users = [User]()
  
  init(view: UsersView?,interactor: UsersInteractor,router: UserVCRouter) {
    self.view = view
    self.interactor = interactor
    self.router = router
  }
  
  func viewDidLoad() {
    getUsers()
  }
  
  func getUsers() {
    view?.showIndicator()
    interactor.getUser {[weak self] users, error in
      guard let self = self else {return}
      self.view?.hideIndicator()
      if let error = error {
        self.view?.showError(error: error.localizedDescription)
      }else {
        guard let users = users else {return}
        self.users = users
        self.view?.fetchingDataSuccess()
      }
    }
  }
  
  func getUserCount() -> Int {
    return users.count
  }
  
  func configure(cell: UserCellView, for index: Int) {
    let user = users[index]
    cell.displayName(name: user._name)
    cell.displayEmail(email: user._email)
    cell.displayAddress(address: user._address._street)
  }
  
  func didSelectRow(index: Int) {
    let user = users[index]
    router.navigateToUserDetailsScreen(form: view, user: user)
  }
  
}
	
