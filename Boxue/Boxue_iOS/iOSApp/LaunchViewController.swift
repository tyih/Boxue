//
//  LaunchViewController.swift
//  Boxue_iOS
//
//  Created by tianyao on 2019/4/8.
//  Copyright © 2019 tiya.com. All rights reserved.
//

import UIKit
import BoxueUIKit
import BoxueDataKit

public class LaunchViewController: NiblessViewController {

    let viewModel: LaunchViewModel
    
    init(launchViewModelFactory: LaunchViewModelFactory) {
        self.viewModel = launchViewModelFactory.makeLaunchViewModel()
        super.init()
    }
}

protocol LaunchViewModelFactory {
    func makeLaunchViewModel() -> LaunchViewModel
}
