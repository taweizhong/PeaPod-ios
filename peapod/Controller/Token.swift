//
//  token.swift
//  peapod
//
//  Created by 他维忠 on 2023/5/19.
//

import Foundation

class Token {
    static func setLogin(_ isLogin:Bool){
        UserDefaults.standard.set(isLogin, forKey: KEY)
    }
    static func isLogin() ->Bool {
        return UserDefaults.standard.bool(forKey: KEY)
    }
    private static let KEY = "KEY_LOGIN"
}
