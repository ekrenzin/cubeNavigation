//
//  Colors.swift
//  Cube
//
//  Created by Ean Krenzin on 11/15/17.
//  Copyright © 2017 Ean Krenzin. All rights reserved.
//

import Foundation
import UIKit

class Colors {
    var gl:CAGradientLayer!
    
    init() {
        let colorTop = UIColor(red: 255 / 255.0, green: 255.0 / 255.0, blue: 255 / 255.0, alpha: 1.0).cgColor
        let colorMiddle = UIColor(red: 100 / 255.0, green: 100 / 255.0, blue: 100 / 255.0, alpha: 1.0).cgColor
        let colorBottom = UIColor(red: 0 / 255.0, green: 0 / 255.0, blue: 0 / 255.0, alpha: 1.0).cgColor
        
        self.gl = CAGradientLayer()
        self.gl.colors = [colorTop, colorBottom]
        self.gl.locations = [0.5, 1]
    }
}
