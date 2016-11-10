//
//  AppManageable.swift
//  protocolDemoSwift
//
//  Created by vincent on 2016/11/10.
//  Copyright © 2016年 vc7. All rights reserved.
//

import Foundation

/// App 管理者的介面
protocol AppManageable {
    /// 取得是否登入的狀態
    var isLoggedIn: Bool { get }
}
