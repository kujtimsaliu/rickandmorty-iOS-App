//
//  Extensions.swift
//  rickmorty
//
//  Created by Kujtim Saliu on 6.5.24.
//

import UIKit

extension UIView {
    func addSubviews(_ views: UIView...){
        views.forEach({
            addSubview($0)
        })
    }
}
