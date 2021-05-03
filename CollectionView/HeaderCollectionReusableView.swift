//
//  HeaderCollectionReusableView.swift
//  CollectionView
//
//  Created by Стас on 29.04.2021.
//

import UIKit

class HeaderCollectionReusableView: UICollectionReusableView {

    static let identifier = "HeaderCollectionReusableView"

    private let label: UILabel = {
        let label = UILabel()
        label.text = "Мои альбомы"
        return label
    }()

    public func configure() {
        addSubview(label)
    }

    override func layoutSubviews() {
        super.layoutSubviews()
        label.frame = bounds
    }
}
