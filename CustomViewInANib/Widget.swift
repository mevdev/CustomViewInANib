//
//  Widget.swift
//  CustomViewInANib
//
//  Created by Linnemann, Robert on 6/8/17.
//  Copyright © 2017 robertlinnemann. All rights reserved.
//

import UIKit

class Widget: UIView {

    @IBOutlet weak var centerImageView: UIImageView!
    @IBOutlet weak var cleverCutlineLabel: UILabel!
    @IBOutlet weak var tapButton: UIButton!
    
    
    override init(frame:CGRect) {
        super.init(frame:frame)
        sharedInit()
    }
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        sharedInit()
    }
    
    func sharedInit() {
        //this will do stuff, just you wait.
    }

    @IBAction func tapAction() {
        
    }
}
