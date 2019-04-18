//
//  UserSession.swift
//  BoxueDataKit
//
//  Created by tianyao on 2019/4/9.
//  Copyright © 2019 tiya.com. All rights reserved.
//

import UIKit

public class UserSession: Codable {
    public let profile: UserProfile
    public let remoteUserSession: RemoteUserSession
    
    public init(profile: UserProfile, remoteUserSession: RemoteUserSession) {
        self.profile = profile
        self.remoteUserSession = remoteUserSession
    }
}

extension UserSession: Equatable {
    public static func ==(lhs: UserSession, rhs: UserSession) -> Bool {
        return lhs.profile == rhs.profile && lhs.remoteUserSession == rhs.remoteUserSession
    }
}
