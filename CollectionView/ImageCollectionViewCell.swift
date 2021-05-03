//
//  ImageCollectionViewCell.swift
//  CollectionView
//
//  Created by Стас on 28.04.2021.
//

import UIKit

class ImageCollectionViewCell: UICollectionViewCell {

//    @IBOutlet weak var photoView: UIImageView!
    
    @IBOutlet weak var countAlbum: UILabel!
    @IBOutlet weak var nameAlbum: UILabel!
    @IBOutlet weak var photoView: UIImageView!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func prepareForReuse() {
        super.prepareForReuse()
        self.photoView.image = nil
        self.nameAlbum.text = nil
        self.countAlbum.text = nil
    }

    func setupCell(album: Album) {
        self.photoView.image = album.image
        self.nameAlbum.text = album.name
        self.countAlbum.text = String(album.count)
        photoView.layer.cornerRadius = 5
        photoView.layer.masksToBounds = true
    }
}

