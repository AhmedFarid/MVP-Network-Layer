//
//  UserVCRouter.swift
//  MVP
//
//  Created by Farido on 10/04/2022.
//UINavigatonController

import UIKit

class UserVCRouter {
  class func createUserVC() -> UIViewController {
    let navigatonController = UIStoryboard(name: "Main", bundle: Bundle.main).instantiateViewController(withIdentifier: "UINavigatonController")
    let userView = navigatonController.children.first as? UsersView
    let userInteractor = UsersInteractor()
    let router = UserVCRouter()
    let presenter = UsersVCPresenter(view: userView, interactor: userInteractor, router: router)
    userView?.presenter = presenter
    return navigatonController
    
  }
  
  func navigateToUserDetailsScreen(form view: UsersView?,user: User) {
    let userDetialsView = UserDetailsViewRouter.createUserDetailsVC(user: user)
    if let viewController = view as? UIViewController {
      viewController.navigationController?.pushViewController(userDetialsView, animated: true)
    }
  }
}
