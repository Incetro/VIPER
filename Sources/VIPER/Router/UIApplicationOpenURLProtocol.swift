//
//  UIApplicationOpenURLProtocol.swift
//  VIPER IOS
//
//  Created by Alexander Lezya on 04.02.2021.
//

import UIKit

// MARK: - UIApplicationOpenURLProtocol

public protocol UIApplicationOpenURLProtocol {

    /// Returns true if can open the given url
    ///
    /// - Parameter url: checkable url
    /// - Returns: true if can open the given url
    @discardableResult func canOpenURL(_ url: URL) -> Bool

    /// Opens the given URL
    ///
    /// - Parameter url: the given URL
    /// - Returns: true if the given url has just been opened
    @discardableResult func openURL(_ url: URL) -> Bool
}
