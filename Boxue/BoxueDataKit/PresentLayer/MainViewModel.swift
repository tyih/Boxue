//
//  MainViewModel.swift
//  BoxueDataKit
//
//  Created by tianyao on 2019/4/9.
//  Copyright © 2019 tiya.com. All rights reserved.
//

import Foundation
import RxSwift

public class MainViewModel: GuideResponder, BrowseResponsder {
    
    /// - Properties
    public var viewStatus: Observable<MainViewStatus> {
        return viewSubject.asObservable()
    }
    
    private let viewSubject = BehaviorSubject<MainViewStatus>(value: .launching)
    
    /// - Methods
    public init() {}
    
    public func guide() {
        viewSubject.onNext(.guiding)
    }
    
    public func browse() {
        viewSubject.onNext(.browsing)
    }
    
}
