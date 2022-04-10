//
//  UserDetailsViewVC.swift
//  MVP
//
//  Created by Farido on 10/04/2022.
//

import UIKit

class UserDetailsViewVC: UIViewController {
  
  @IBOutlet weak var titleTextFiled: UILabel!
  @IBOutlet weak var emailTextFiled: UILabel!
  
  var presenter: UserDetailsViewPresenter?
  
  override func viewDidLoad() {
    super.viewDidLoad()
    presenter?.viewDidLoad()
  }
}
