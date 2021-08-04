//
//  SafeHelper.swift
//  NowAppHelpers
//
//  Created by Ivan Gabriel on 08.03.2021.
//

import UIKit
import SwiftKeychainWrapper

open class SafeHelper: NSObject {

    open class func saveTokens(_accessToken: String, _refreshToken: String, _accessTokenKey: String, _refreshTokenKey: String) {
        KeychainWrapper.standard.set(_accessToken,
                                     forKey: _accessTokenKey, withAccessibility: .always)
        KeychainWrapper.standard.set(_refreshToken,
                                     forKey: _refreshTokenKey, withAccessibility: .always)
    }
    
    open class func saveFirebaseToken(_firebaseToken: String, _firebaseTokenKey: String) {
        KeychainWrapper.standard.set(_firebaseToken,
                                     forKey: _firebaseTokenKey)
    }
    
    open class func deleteTokens(_accessTokenKey: String, _refreshTokenKey: String) {
        KeychainWrapper.standard.removeObject(forKey: _accessTokenKey,
                                              withAccessibility: .always)
        KeychainWrapper.standard.removeObject(forKey: _refreshTokenKey,
                                              withAccessibility: .always)
    }
    
    open class func getAccessToken(_accessTokenKey: String) -> String {
        return KeychainWrapper.standard.string(forKey: _accessTokenKey,
                                               withAccessibility: .always) ?? ""
    }
    
    open class func getRefreshToken(_refreshTokenKey: String) -> String {
        return KeychainWrapper.standard.string(forKey: _refreshTokenKey,
                                               withAccessibility: .always) ?? ""
    }
    
    open class func getFirebaseToken(_firebaseTokenKey: String) -> String {
        return KeychainWrapper.standard.string(forKey: _firebaseTokenKey) ?? ""
    }
}
