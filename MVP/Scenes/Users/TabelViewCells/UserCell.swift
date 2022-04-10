//
//  UserCell.swift
//  MVP
//
//  Created by Farido on 14/01/2022.
//

import UIKit

class UserCell: UITableViewCell, UserCellView {
    
    

    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var addressLabel: UILabel!
    @IBOutlet weak var emailLabel: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        selectionStyle = .none
    }
    
    func displayName(name: String) {
        nameLabel.text = name
    }
    
    func displayAddress(address: String) {
        addressLabel.text = address
    }
    
    func displayEmail(email: String) {
        emailLabel.text = email
    }

    
    
}
