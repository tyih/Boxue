//
//  NiblessView.swift
//  BoxueUIKit
//
//  Created by tianyao on 2019/4/8.
//  Copyright © 2019 tiya.com. All rights reserved.
//

import UIKit

open class NiblessView: UIView {

    public override init(frame: CGRect) {
        super.init(frame: frame)
    }
    
    @available(*, unavailable, message: "Loading this view from a nib is unsupported")
    public required init?(coder aDecoder: NSCoder) {
        fatalError("Loading this view from a nib is unsupported")
    }
}
