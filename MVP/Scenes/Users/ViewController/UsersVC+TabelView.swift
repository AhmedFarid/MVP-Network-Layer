//
//  UsersVC+TabelView.swift
//  MVP
//
//  Created by Farido on 14/01/2022.
//

import UIKit

extension UsersVC: UITableViewDataSource, UITableViewDelegate {
    
    func setUpTabelView() {
        tabelView.dataSource = self
        tabelView.delegate = self
        
        tabelView.register(UINib(nibName: "UserCell", bundle: nil), forCellReuseIdentifier: "UserCell")
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return presenter?.getUserCount() ?? 0
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "UserCell", for: indexPath) as! UserCell
        presenter?.configure(cell: cell, for: indexPath.row)
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        presenter?.didSelectRow(index: indexPath.row)
    }
}
