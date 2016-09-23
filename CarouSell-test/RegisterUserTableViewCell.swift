//
//  RegisterUserTableViewCell.swift
//  CarouSell-test
//
//  Created by stephanie yang on 2016/4/17.
//  Copyright © 2016年 stephanie yang. All rights reserved.
//

import UIKit

class RegisterUserTableViewCell: UITableViewCell {
    
    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var iconImage: UIImageView!
    @IBOutlet weak var frontLabel: UITextField!
    
    
    

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}
