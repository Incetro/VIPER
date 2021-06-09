//
//  ContentManagerView.swift
//  Auth IOS
//
//  Created by incetro on 5/31/21.
//

import UIKit

// MARK: - ContentManagerView

public protocol ContentManagerView: AnyObject {

    /// Delegate type constraint
    associatedtype Delegate: AnyObject

    /// Data source type constraint
    associatedtype DataSource: AnyObject

    /// Data source instance
    var dataSource: DataSource? { get set }

    /// Delegate instance
    var delegate: Delegate? { get set }
}

// MARK: - UITableView

extension UITableView: ContentManagerView {

}
