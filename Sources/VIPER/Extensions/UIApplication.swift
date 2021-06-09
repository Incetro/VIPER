//
//  UIApplication.swift
//  VIPER IOS
//
//  Created by Alexander Lezya on 04.02.2021.
//

import UIKit

// MARK: - UIApplication

extension UIApplication {

    public func topViewController(base: UIViewController?) -> UIViewController? {
        if let nav = base as? UINavigationController {
            return topViewController(base: nav.visibleViewController)
        } else if let tab = base as? UITabBarController, let selected = tab.selectedViewController {
            return topViewController(base: selected)
        } else if let presented = base?.presentedViewController {
            return topViewController(base: presented)
        }
        return base
    }

    public func topViewController() -> UIViewController? {
        topViewController(base: keyWindow?.rootViewController)
    }
}
