//
//  UserProfile.swift
//  BoxueDataKit
//
//  Created by tianyao on 2019/4/9.
//  Copyright © 2019 tiya.com. All rights reserved.
//

import UIKit

public struct UserProfile: Codable, Equatable {
    public let name: String
    public let email: String
    public let mobile: String
    public let avatar: URL
    
    public init(name:String, email: String, mobile: String, avatar: URL) {
        self.name = name
        self.email = email
        self.mobile = mobile
        self.avatar = avatar
    }
}
