//
//  IntermediateContentManager.swift
//  Auth IOS
//
//  Created by incetro on 5/31/21.
//

import UIKit

// MARK: - IntermediateContentManager

open class IntermediateContentManager<View: UIView & ContentManagerView>: NSObject, ContentManager {

    // MARK: - Properties

    /// View with content
    open weak var contentView: View?

    // MARK: - ContentManager

    /// Returns dataSource for ContentView
    ///
    /// - Parameter contentView: ContentView instance
    /// - Returns: dataSource for ContentView
    open func dataSource(for contentView: View) -> View.DataSource? {
        self as? View.DataSource
    }

    /// Returns delegate for ContentView
    ///
    /// - Parameter contentView: ContentView instance
    /// - Returns: delegate for ContentView
    open func delegate(for contentView: View) -> View.Delegate? {
        self as? View.Delegate
    }
}
