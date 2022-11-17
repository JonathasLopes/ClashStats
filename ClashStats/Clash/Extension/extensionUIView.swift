//
//  extensionUIView.swift
//  ClashStats
//
//  Created by Jonathas Lopes on 15/11/22.
//

import UIKit

extension UIView {
    func addConstraintSubview(_ view: UIView) {
        view.translatesAutoresizingMaskIntoConstraints = false
        addSubview(view)
    }

    func addConstraintsToSubview(_ views: UIView...) {
        views.forEach { view in addConstraintSubview(view) }
    }
}
