//
//  AccessTokenManager.swift
//  protocolDemoSwift
//
//  Created by vincent on 2016/11/10.
//  Copyright © 2016年 vc7. All rights reserved.
//

import Foundation
import KeychainAccess

class AccessTokenManager: TokenManageable {
    
    /// 負責和 Keychain 溝通的 KeychainAccess 的 instance
    internal let keychain: Keychain = Keychain()
    /// 存在 Keychain 裡的 key name
    internal let key: String = "accessToken"
    
    var token: String? {
        return self.keychain[key]
    }
    
    func update(token: String) {
        self.keychain[key] = token
    }
    
    func reset() {
        self.keychain[key] = nil
    }
}
