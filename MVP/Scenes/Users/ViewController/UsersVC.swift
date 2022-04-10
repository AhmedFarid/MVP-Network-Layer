//
//  ViewController.swift
//  MVP
//
//  Created by Farido on 14/01/2022.
//

import UIKit

class UsersVC: UIViewController {

    @IBOutlet weak var tabelView: UITableView!
    
    var presenter: UsersVCPresenter?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setUpTabelView()
        title = "Users"
        //presenter = UsersVCPresenter(view: self)
        presenter?.viewDidLoad()
    }


}

