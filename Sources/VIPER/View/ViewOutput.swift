//
//  ViewOutput.swift
//  VIPER IOS
//
//  Created by Alexander Lezya on 04.02.2021.
//

import Foundation

// MARK: - ViewOutput

public protocol ViewOutput: AnyObject {

    /// Said to view output that it's necesarry to
    /// update current view state with some new data
    func didTriggerRequestUpdateEvent()

    /// View did load event
    func viewDidLoad()

    /// View will appear event
    func viewWillAppear(animated: Bool)

    /// View did appear event
    func viewDidAppear(animated: Bool)

    /// View will disappear event
    func viewWillDisappear(animated: Bool)

    /// View did disappear event
    func viewDidDisappear(animated: Bool)
}

public extension ViewOutput {

    /// Said to view output that it's necesarry to
    /// update current view state with some new data
    func didTriggerRequestUpdateEvent() {
    }

    /// View did load event
    func viewDidLoad() {
    }

    /// View will appear event
    func viewWillAppear(animated: Bool) {
    }

    /// View did appear event
    func viewDidAppear(animated: Bool) {
    }

    /// View will disappear event
    func viewWillDisappear(animated: Bool) {
    }

    /// View did disappear event
    func viewDidDisappear(animated: Bool) {
    }
}
