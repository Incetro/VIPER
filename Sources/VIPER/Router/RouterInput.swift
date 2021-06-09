//
//  RouterInput.swift
//  VIPER IOS
//
//  Created by Alexander Lezya on 04.02.2021.
//

import TransitionHandler

// MARK: - RouterInput

public protocol RouterInput {

    /// Transition handler instance
    var transitionHandler: TransitionHandler { get }

    /// Close current module
    func close(animated: Bool)

    /// Close current module
    func close()
}

// MARK: - TransitionHandler

public extension RouterInput {

    func showShareDialog(withItem item: Any) {
        transitionHandler.showShareDialog(withItem: item)
    }

    func close(animated: Bool) {
        transitionHandler
            .closeCurrentModule()
            .animate(animated)
            .perform()
    }

    func close() {
        close(animated: true)
    }
}
