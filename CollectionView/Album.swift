//
//  Album.swift
//  CollectionView
//
//  Created by Стас on 28.04.2021.
//

import UIKit

struct Album {
    var image: UIImage
    var name: String
    var count: Int
}

class Galery {
    var albums = [Album]()
    init() {
        setup()
    }
    func setup() {
        let recentPhoto = Album(image: UIImage(named: "image1")!, name: "Недавние", count: 6478)
        let favoritePhoto = Album(image: UIImage(named: "image2")!, name: "Избранные", count: 5)
        let whatsAppPhoto = Album(image: UIImage(named: "image3")!, name: "WhatsApp", count: 1000)
        let downloadPhoto = Album(image: UIImage(named: "image4")!, name: "Загруженные", count: 24)
        let savePhoto = Album(image: UIImage(named: "image5")!, name: "Сохраненные", count: 553)
        let myPhoto = Album(image: UIImage(named: "image6")!, name: "Мои фото", count: 943)
        self.albums = [recentPhoto,favoritePhoto, whatsAppPhoto, downloadPhoto, savePhoto, myPhoto]
    }
}
