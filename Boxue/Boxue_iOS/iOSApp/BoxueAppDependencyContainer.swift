//
//  BoxueAppDependencyContainer.swift
//  Boxue_iOS
//
//  Created by tianyao on 2019/4/8.
//  Copyright © 2019 tiya.com. All rights reserved.
//

import BoxueDataKit

public class BoxueAppDependencyContainer {
    let sharedMainViewModel: MainViewModel
    let sharedUserSessionRepository: BoxueUserSessionRepository
    
    public init() {
//        func makeUserSessionStore()
        
//        func makeAuthRemoteAPI()
        
        func makeUserSessionRepository() -> BoxueUserSessionRepository {
            return BoxueUserSessionRepository()
        }
        
        func makeMainViewModel() -> MainViewModel {
            return MainViewModel()
        }
        self.sharedMainViewModel = makeMainViewModel()
        self.sharedUserSessionRepository = makeUserSessionRepository()
    }
    
    public func makeMainViewController() -> MainViewController {
//        let launchViewController = makeLaunchViewController()
        
        return MainViewController()
    }
    
    public func makeLaunchViewController() -> LaunchViewController {
    
        return LaunchViewController(launchViewModelFactory: self)
    }
}

extension BoxueAppDependencyContainer: LaunchViewModelFactory {
    public func makeLaunchViewModel() -> LaunchViewModel {
        return LaunchViewModel(userSessionRepository: sharedUserSessionRepository, guideResponder: sharedMainViewModel, browseResponder: sharedMainViewModel)
    }
}
