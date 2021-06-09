//
//  SettingsRevealableRouter.swift
//  VIPER IOS
//
//  Created by Alexander Lezya on 04.02.2021.
//

import TransitionHandler

// MARK: - SettingsRevealableRouter

open class SettingsRevealableRouter: Router {

    /// UIApplicationOpenURLProtocol instance
    public let applicationOpenURL: UIApplicationOpenURLProtocol

    /// Bundle instance
    public let bundle: Bundle

    // MARK: - Initializers

    /// Default initializer
    /// - Parameters:
    ///   - transitionHandler: transition handler instance
    ///   - applicationOpenURL: UIApplicationOpenURLProtocol instance
    ///   - bundle: Bundle instance
    public init(
        transitionHandler: TransitionHandler,
        applicationOpenURL: UIApplicationOpenURLProtocol,
        bundle: Bundle
    ) {
        self.applicationOpenURL = applicationOpenURL
        self.bundle = bundle
        super.init(transitionHandler: transitionHandler)
    }
}

// MARK: - SettingsRevealableRouterInput

extension SettingsRevealableRouter: SettingsRevealableRouterInput {

    /// Open URL settings with bundle
    public func openSettings() {
        guard
            let bundleIdentifier = bundle.bundleIdentifier,
            let settingsUrl = URL(string: UIApplication.openSettingsURLString + bundleIdentifier)
        else { return }
        applicationOpenURL.openURL(settingsUrl)
    }
}
