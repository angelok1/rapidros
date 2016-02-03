//
//  QuestionCell.swift
//  patient_facing
//
//  Created by Angelo Kastroulis on 10/24/15.
//  Copyright © 2015 Bravado. All rights reserved.
//

import Foundation
import UIKit

class QuestionCell: UITableViewCell{
    @IBOutlet weak var lblText: UILabel!
    @IBOutlet weak var buttonYes: UIButton!
    @IBOutlet weak var buttonNo: UIButton!
    
    override func awakeFromNib() {
        super.awakeFromNib()
    }
    
    override func setSelected(selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
        
        if(buttonYes.selected){
            buttonNo.selected = false;
        }
        else if(buttonNo.selected){
            buttonYes.selected = false;
        }

    }
}