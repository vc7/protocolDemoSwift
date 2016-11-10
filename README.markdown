# Protocol Demo in Swift

這是 2016-11-10 在 CocoaHeads Taipei 分享內容的 demo 程式碼

環境如下：

- Xcode 8.1 (8B62)
- Swift 3, iOS 10 SDK
- macOS 10.12.1

## 簡報

- Protocol 的實例、測試和心得 - [Speaker Deck](https://speakerdeck.com/vc7/protocol-de-shi-li-ce-shi-he-xin-de)

## 步驟

### 初始化專案

Commit - [576179b](https://github.com/vc7/protocolDemoSwift/commit/576179baafaea5af05d250cb2f9cbec0d543688c)

在這個步驟加入
- .gitignore
- CocoaPods 基本設定

### 建立 App 管理者的介面

Commit - [5c850e9](https://github.com/vc7/protocolDemoSwift/commit/5c850e947344edab246acbccf972d1d8040deeb3)

### 建立 Token 管理者的介面

Commit - [cd21d3b](https://github.com/vc7/protocolDemoSwift/commit/cd21d3b6996f90c08277993a33652879c021f51a)

### 實作 AppManager 類別

Commit - [8363654](https://github.com/vc7/protocolDemoSwift/commit/836365450ca2d30a9dd41cb5873dbb532719b939)

- 加入 singleton 實作
- `accessTokenManager` 的實際 class 因為還沒實作，這時候先以 optional 的型態呈現

### 新增 AccessTokenManager 實作

Commit - [93a6357](https://github.com/vc7/protocolDemoSwift/commit/93a635766ca495404256355dc471a0117a6ce020)

### 加入 Keychain

Commit - [7ffe046](https://github.com/vc7/protocolDemoSwift/commit/7ffe046fb4d803ccd10690b22066dfd8d70dc9a3)

- 加入 [KeychainAccess](https://github.com/kishikawakatsumi/KeychainAccess)
- 完成 AccessTokenManager 的存取 token 實作
- :exclamation: 注意：Target 的 Capabilities 的 Keychain Sharing 要調整成  `ON`

### 新增 Singleton 實作，並調整 AppManager 的實作

Commit - [3e7a8dc](https://github.com/vc7/protocolDemoSwift/commit/3e7a8dc99f16672b49243bcb6f627571dfaf5a4d)

- 幫 AccessTokenManager 加上 singleton 實作
- 把原本在 AppManager 設定成 `TokenManager?` 的變數修改，直接取用 AccessTokenManager 的 singleton

### 加上測試：當 access token 存在時，AppManager 的 isLoggedIn 應為 true

Commit - [bc62185](https://github.com/vc7/protocolDemoSwift/commit/bc6218513df8b666b100f73822f5716c2a325d34)

- 加上 MockAccessTokenExistTokenManager 作為 accessTokenManager 的測試替身

### 加上測試：當 access token 不存在時，AppManager 的 isLoggedIn 應為 false 

Commit - [ce8e750](https://github.com/vc7/protocolDemoSwift/commit/ce8e75057240829482f0ddc599646b6dd95d4172)

- 加上 MockAccessTokenNotExistTokenManager 作為 accessTokenManager 的測試替身

## 補充資訊

### 相關內容

- Apple - [Protocols](https://developer.apple.com/library/content/documentation/Swift/Conceptual/Swift_Programming_Language/Protocols.html)
- WWDC 2015 Session 408 - [Protocol-Oriented Programming in Swift](https://developer.apple.com/videos/play/wwdc2015/408/) （需在 Safari 觀看）

### 我的文章或投影片

這一部分是這邊和這個範例有關的文章或投影片

- 我的 Manager 的命名方式 - [最近形成的 Manager 寫法 - Swift](http://qiita.com/vc7/items/c29f5bf4bb5a5eb37638)
- 撰寫 Mock 的心得 - [在 iOS 專案 Mock 心得文和意料之外的收穫](http://qiita.com/vc7/items/e7056aa04c7a199d42d6)
- 測試替身相關簡報 - [Stub 與 Networking](https://speakerdeck.com/vc7/stub-yu-networking)
