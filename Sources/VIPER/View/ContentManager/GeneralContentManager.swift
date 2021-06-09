//
//  GeneralContentManager.swift
//  Auth IOS
//
//  Created by incetro on 5/31/21.
//

import Foundation

// MARK: - GeneralContentManager

public protocol GeneralContentManager {

    /// Setup current content manager with some content view
    ///
    /// - Parameter contentView: ContentView for cards displaying
    func configure(withContentView contentView: Any)
}

public extension GeneralContentManager where Self: ContentManager {

    /// Setup current content manager with some content view
    ///
    /// - Parameter contentView: ContentView for cards displaying
    func configure(withContentView contentView: Any) {
        if let contentView = contentView as? ContentView {
            configure(withContentView: contentView)
        }
    }
}
