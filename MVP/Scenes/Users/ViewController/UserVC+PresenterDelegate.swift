//
//  UserVC+PresenterDelegate.swift
//  MVP
//
//  Created by Farido on 14/01/2022.
//

import Foundation
import SKActivityIndicatorView

extension UsersVC: UsersView {
    
    func showIndicator() {
        //SKActivityIndicator.show()
    }
    
    func hideIndicator() {
        //SKActivityIndicator.dismiss()
    }
    
    func fetchingDataSuccess() {
        tabelView.reloadData()
    }
    
    func showError(error: String) {
        print(error)
    }
}
