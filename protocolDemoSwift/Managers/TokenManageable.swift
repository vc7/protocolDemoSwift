//
//  TokenManageable.swift
//  protocolDemoSwift
//
//  Created by vincent on 2016/11/10.
//  Copyright © 2016年 vc7. All rights reserved.
//

import Foundation

/// Token 管理者的介面
protocol TokenManageable {
    /// 取得 token
    var token: String? { get }
    
    /// 更新 token
    func update(token: String)
    
    /// 重置/清除 token
    func reset()
}
