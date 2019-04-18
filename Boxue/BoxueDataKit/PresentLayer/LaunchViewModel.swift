//
//  LaunchViewModel.swift
//  BoxueDataKit
//
//  Created by tianyao on 2019/4/9.
//  Copyright © 2019 tiya.com. All rights reserved.
//

import Foundation
import RxSwift

public class LaunchViewModel {
    
//    var isFirstLaunch = <#value#>

    let userSessionRepository: UserSessionRepository
    let guideResponder: GuideResponder
    let browseResponder: BrowseResponsder
    
//    public var logMessages: Observable<>
    
//    private let logMessagesSubject =
    
    /// - Initializers
    public init(userSessionRepository: UserSessionRepository, guideResponder: GuideResponder, browseResponder: BrowseResponsder) {
        self.userSessionRepository = userSessionRepository
        self.guideResponder = guideResponder
        self.browseResponder = browseResponder
    }
    
    /// - Methods
    public func goToNextScreen() {
        
    }
    
}
