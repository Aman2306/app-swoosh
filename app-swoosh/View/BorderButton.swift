//
//  BorderButton.swift
//  app-swoosh
//
//  Created by Aman Meena on 22/03/19.
//  Copyright © 2019 Aman Meena. All rights reserved.
//

import UIKit

class BorderButton: UIButton {
    
    override func awakeFromNib() {
        super.awakeFromNib()
        
        layer.backgroundColor = #colorLiteral(red: 0, green: 0, blue: 0, alpha: 0.4)
        layer.borderWidth = 2.0
        layer.borderColor = #colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)
    }
}
