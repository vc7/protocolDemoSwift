//
//  AppManager.swift
//  protocolDemoSwift
//
//  Created by vincent on 2016/11/10.
//  Copyright © 2016年 vc7. All rights reserved.
//

import Foundation

/// App 的主要管理者
class AppManager: AppManageable {

    private init() {
    }
    
    /// AppManager 的 singleton instance
    static let `default` = AppManager()
    
    var isLoggedIn: Bool {
        return self.accessTokenManager?.token != nil
    }
    
    /// 管理 acceess token 的 manager
    var accessTokenManager: TokenManageable?
}
