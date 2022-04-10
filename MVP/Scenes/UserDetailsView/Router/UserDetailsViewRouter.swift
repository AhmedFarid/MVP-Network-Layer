//
//  UserDetailsViewRouter.swift
//  MVP
//
//  Created by Farido on 10/04/2022.
//

import UIKit

class UserDetailsViewRouter {
  class func createUserDetailsVC(user: User) -> UIViewController {
    let userDetailsView = UserDetailsViewVC(nibName: "UserDetailsViewVC", bundle: nil) as UserDetailsViewVC
    let presenter = UserDetailsViewPresenter(view: userDetailsView, user: user)
    userDetailsView.presenter = presenter
    return userDetailsView
  }
}
