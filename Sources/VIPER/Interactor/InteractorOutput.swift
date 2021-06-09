//
//  InteractorOutput.swift
//  VIPER IOS
//
//  Created by Alexander Lezya on 04.02.2021.
//

import Foundation

// MARK: - InteractorOutput

public protocol InteractorOutput: AnyObject {

    /// Method for presenters which receives Interactor's errors
    ///
    /// - Parameter errorMessage: Error message
    func processErrorMessage(_ errorMessage: String)

    /// Method for presenters which receives Interactor's errors
    ///
    /// - Parameter error: some error
    func processError(_ error: Error)
}

public extension InteractorOutput {

    /// Method for presenters which receives Interactor's errors
    ///
    /// - Parameter error: some error
    func processError(_ error: Error) {
        processErrorMessage(error.localizedDescription)
    }
}
