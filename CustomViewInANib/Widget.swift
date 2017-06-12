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
        loadNib()
        sharedInit()
    }
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        loadNib()
        sharedInit()
    }
    
    func sharedInit() {
        //this will do stuff, just you wait.
    }
    
    func loadNib() {
        let nibView = Bundle(for: self.classForCoder).loadNibNamed("Widget", owner: self, options: nil)?.first as? UIView
        nibView?.frame = self.bounds
        nibView?.autoresizingMask = [.flexibleWidth, .flexibleHeight]
        if(nibView != nil) {
            self.addSubview(nibView!)
        }
    }
    
    override func awakeFromNib() {
        loadNib()
//        guard let name = self.nibView,
//            let xib = Bundle.main.loadNibNamed("Widget", owner: self),
//            let views = xib as? [UIView], views.count > 0 else { return }
//        self.addSubview(views[0] as! UIView)
    }

    @IBAction func tapAction() {
        
    }
    
}
