//
//  UserSessionStore.swift
//  BoxueDataKit
//
//  Created by tianyao on 2019/4/9.
//  Copyright © 2019 tiya.com. All rights reserved.
//

import Foundation
import PromiseKit

public protocol UserSessionStore {
    func save(userSession: UserSession) -> Promise<UserSession>
    func load() -> Promise<UserSession>
    func delete() -> Promise<Bool>
}
