//
//  ViewController.swift
//  CollectionView
//
//  Created by Стас on 28.04.2021.
//

import UIKit

class ViewController: UIViewController {

    var images = [UIImage]()
    let countCells: CGFloat = 2
    let offset: CGFloat = 5
    var album: Galery = Galery()


    @IBOutlet weak var collectionView: UICollectionView!

    override func viewDidLoad() {
        super.viewDidLoad()
        self.collectionView.register(UINib(nibName: "ImageCollectionViewCell", bundle: nil), forCellWithReuseIdentifier: "ImageCollectionViewCell")
        collectionView?.register(HeaderCollectionReusableView.self, forSupplementaryViewOfKind: UICollectionView.elementKindSectionHeader, withReuseIdentifier: HeaderCollectionReusableView.identifier)
        title = "Альбомы"
        collectionView.dataSource = self
        collectionView.delegate = self
        for i in 1...11{
            let image = UIImage(named: "image\(i)")!
            images.append(image)
        }
        collectionView.heightAnchor.constraint(equalToConstant: 580).isActive = true
        
    }


}

extension ViewController: UICollectionViewDelegate, UICollectionViewDataSource, UICollectionViewDelegateFlowLayout {

//    func collectionView(_ collectionView: UICollectionView, viewForSupplementaryElementOfKind kind: String, at indexPath: IndexPath) -> UICollectionReusableView {
//        let header = collectionView.dequeueReusableSupplementaryView(ofKind: UICollectionView.elementKindSectionHeader, withReuseIdentifier: HeaderCollectionReusableView.identifier, for: indexPath) as! HeaderCollectionReusableView
//        header.configure()
//        return header
//    }
//
//    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, referenceSizeForHeaderInSection section: Int) -> CGSize {
//        return CGSize(width: collectionView.frame.size.width, height: 50)
//    }

    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return album.albums.count
    }

    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "ImageCollectionViewCell", for: indexPath) as! ImageCollectionViewCell
        let currentAlbum = album.albums[indexPath.item]
        cell.setupCell(album: currentAlbum)
        cell.layer.masksToBounds = true
        
        return cell

    }

    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        let frameCollectionView = collectionView.frame
        let widthCell = frameCollectionView.width / countCells
        let heightCell = widthCell
        let spacing = (countCells + 1) * offset / countCells


        return CGSize(width: widthCell - spacing, height: heightCell - (offset * 2) + 90)
    }

    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumLineSpacingForSectionAt section: Int) -> CGFloat {
        return 10
    }


}

