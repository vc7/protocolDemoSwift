//
//  AppManagerTests.swift
//  protocolDemoSwift
//
//  Created by vincent on 2016/11/10.
//  Copyright © 2016年 vc7. All rights reserved.
//

import XCTest

class AppManagerTests: XCTestCase {
    
    override func setUp() {
        super.setUp()
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }
    
    override func tearDown() {
        
        AppManager.default.accessTokenManager = AccessTokenManager.default
        
        super.tearDown()
    }
    
    func testAccessTokenExistIsLoggedInWillBeTrue() {
        let appManager = AppManager.default
        appManager.accessTokenManager = MockAccessTokenExistTokenManager()
        
        XCTAssertTrue(appManager.isLoggedIn)
    }
}

/// 模擬 token 存在的測試替身。 update 和 reset 因為不在被測範圍，所以沒有實作功能
private class MockAccessTokenExistTokenManager: TokenManageable {
    var token: String? {
        return "some-token"
    }
    
    func update(token: String) {
    }
    
    func reset() {
    }
}
