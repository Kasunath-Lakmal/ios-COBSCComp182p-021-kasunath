
//
//  RoudedwhiteButton.swift
//  ios-COBSCComp182P-021
//
//  Created by kasunath on 2/29/20.
//  Copyright © 2020 kasunath. All rights reserved.
//

import Foundation
import UIKit


class RoundedWhiteButton:UIButton {
    
    var highlightedColor = UIColor.white
    {
        didSet {
            if isHighlighted {
                backgroundColor = highlightedColor
            }
        }
    }
    var defaultColor = UIColor.clear
    {
        didSet {
            if !isHighlighted {
                backgroundColor = defaultColor
            }
        }
    }
    
    override var isHighlighted: Bool {
        didSet {
            if isHighlighted {
                backgroundColor = highlightedColor
                
            } else {
                backgroundColor = defaultColor
            }
        }
    }
    
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        setup()
    }
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        
    }
    
    override func awakeFromNib() {
        super.awakeFromNib()
        setup()
    }
    
    func setup() {
        self.layer.borderColor = UIColor.white.cgColor
        self.layer.borderWidth = 2.0
        self.layer.cornerRadius = self.frame.height / 2
        self.clipsToBounds = true
    }
}

