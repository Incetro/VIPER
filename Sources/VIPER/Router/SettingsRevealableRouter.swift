//
//  SettingsRevealableRouter.swift
//  VIPER IOS
//
//  Created by Alexander Lezya on 04.02.2021.
//

import TransitionHandler

// MARK: - SettingsRevealableRouter

public class SettingsRevealableRouter: Router {

    /// UIApplicationOpenURLProtocol instance
    let applicationOpenURL: UIApplicationOpenURLProtocol

    /// Bundle instance
    let bundle: Bundle

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

    /// Open URL settings with bundle
    final func openSettings() {
        guard
            let bundleIdentifier = bundle.bundleIdentifier,
            let settingsUrl = URL(string: UIApplication.openSettingsURLString + bundleIdentifier)
        else { return }
        applicationOpenURL.openURL(settingsUrl)
    }
}
