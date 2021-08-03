//
//  ViewInput.swift
//  VIPER IOS
//
//  Created by Alexander Lezya on 25.01.2021.
//

import TransitionHandler
import UIKit

// MARK: - ViewInput

public protocol ViewInput: AnyObject {

    // MARK: - Properties

    var isIndicating: Bool { get }

    // MARK: - Useful

    /// Waiting state
    func startIndication()

    /// Waiting state with some text
    func startIndication(
        withText text: String?,
        details: String?
    )

    /// Stop 'Waiting state'
    func stopIndication()

    /// Show progress state
    func showProgress(_ progress: Double)

    /// Show success state
    func showSuccess()

    /// Show success state with text
    func showSuccess(withText text: String?)

    /// Show some message
    /// - Parameter message: Message text
    func showMessage(_ message: String)

    /// Show some error message with action block
    /// - Parameters:
    ///   - message: message text
    ///   - block: retry action
    func showMessage(
        _ message: String,
        actionBlock: @escaping () -> Void
    )

    /// Show some detailed message with action block
    /// - Parameters:
    ///   - message: message text
    ///   - description: description text
    ///   - image: image
    ///   - actionBlock: retry action
    func showDetailedMessage(
        _ message: String,
        description: String?,
        image: UIImage?,
        actionBlock: (() -> Void)?
    )

    /// Show some detailed message with action block
    /// - Parameters:
    ///   - message: message text
    ///   - description: description text
    ///   - image: image
    func showDetailedMessage(
        _ message: String,
        description: String?,
        image: UIImage?
    )

    /// Show some error message
    /// - Parameter errorMessage: Error message text
    func showErrorMessage(_ errorMessage: String)

    /// Show some error message with retry block
    /// - Parameters:
    ///   - errorMessage: Error message text
    ///   - block: retry action
    func showErrorMessage(
        _ errorMessage: String,
        retryBlock: @escaping () -> Void
    )

    /// Show some error message with action and cancel blocks
    /// - Parameters:
    ///   - errorMessage: Error message text
    ///   - block: retry action
    ///   - block: cancel action
    func showErrorMessage(
        _ errorMessage: String,
        actionBlock: @escaping () -> Void,
        cancelBlock : @escaping () -> Void
    )

    /// Show unknown error message
    func showError()

    /// Shows confirmation
    /// - Parameters:
    ///   - title: alert title
    ///   - confirmationBlock: calls if action was confirmed
    func showConfirmationMessage(
        title: String,
        confirmationBlock: @escaping () -> Void
    )
}

// MARK: - Default

public extension ViewInput {

    var isIndicating: Bool { false }

    func startIndication() {
        startIndication(withText: nil, details: nil)
    }

    func startIndication(withText text: String) {
        startIndication(withText: text, details: nil)
    }

    func showSuccess() {
        showSuccess(withText: nil)
    }
}
