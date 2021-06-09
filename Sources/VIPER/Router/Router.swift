//
//  Router.swift
//  VIPER IOS
//
//  Created by Alexander Lezya on 04.02.2021.
//

import TransitionHandler

// MARK: - Router

open class Router: RouterInput {

    // MARK: - Properties

    /// Transition handler instance
    public unowned let transitionHandler: TransitionHandler

    // MARK: - Initializers

    /// Default initializer
    ///
    /// - Parameter transitionHandler: transition handler instance
    public init(transitionHandler: TransitionHandler) {
        self.transitionHandler = transitionHandler
    }
}
