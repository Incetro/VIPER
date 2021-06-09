//
//  ContentManager.swift
//  Auth IOS
//
//  Created by incetro on 5/31/21.
//

import UIKit

// MARK: - ContentManager

public protocol ContentManager: AnyObject {

    /// Conent view type (like `UITableView` or `UICollectionView`)
    associatedtype ContentView: UIView & ContentManagerView

    /// View with content
    var contentView: ContentView? { get set }

    /// Returns dataSource for ContentView
    ///
    /// - Parameter contentView: ContentView instance
    /// - Returns: dataSource for ContentView
    func dataSource(`for` contentView: ContentView) -> ContentView.DataSource?

    /// Returns delegate for ContentView
    ///
    /// - Parameter contentView: ContentView instance
    /// - Returns: delegate for ContentView
    func delegate(`for` contentView: ContentView) -> ContentView.Delegate?

    /// Setup current content manager with some ContentView
    ///
    /// - Parameter contentView: ContentView for cards displaying
    func configure(withContentView contentView: ContentView)
}

// MARK: - Default

extension ContentManager {

    /// Setup current content manager with some ContentView
    ///
    /// - Parameter tableView: UITableView for cards displaying
    public func configure(withContentView contentView: ContentView) {
        contentView.dataSource = dataSource(for: contentView)
        contentView.delegate = delegate(for: contentView)
        self.contentView = contentView
    }
}
