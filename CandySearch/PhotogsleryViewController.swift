//
//  PhotogsleryViewController.swift
//  CandySearch
//
//  Created by Admin on 21.06.17.
//  Copyright © 2017 Peartree Developers. All rights reserved.
//


import UIKit

class PhotoGalleryView: UIViewController , UICollectionViewDataSource , UICollectionViewDelegate{
    
    
    @IBOutlet var collectionView: UICollectionView!
    
    @IBOutlet var detailDescriptionLabel: UILabel!
    
    
    var selectedImage = String()
    var selectedLabels = String()
    
    
    var detailCity: City!
    var photos = [PhotoImage]()
    var phim = [PhIm]()
    var ph = [Phh]()
    
    override func viewDidLoad(){
        super.viewDidLoad()
        

for ijk in 0...photos.count-1
{
    
    if photos[ijk].cityId == detailCity.id{
        phim.append(PhIm(image : photos[ijk].image,name: photos[ijk].name,
                         coordx :photos[ijk].coordx, coordy :photos[ijk].coordy))
    }
}

}


override func viewWillAppear(_ animated: Bool) {
    self.collectionView!.reloadData()
}
// смотрим сколько ячеек необходимо создать
func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
    // Количество ячеек должно соответствовать количеству
    // фотографий в нашем массиве
    return   phim.count
    
}
func numberOfSections(in collectionView: UICollectionView) -> Int {
    return 1
}
//заполняем ячейки

func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
    
    let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "cellPhoto", for: indexPath) as! CollectionViewCellPhotos
    let item = phim[indexPath.row]
    
    
    let data = NSData(contentsOf: URL(string:(item.imagePhIm)!)!)
    if data != nil{
        cell.photo.image = UIImage(data: data! as Data)
        cell.nameLabel.text = item.namPhIm
    }
    
    return cell
}

override func didReceiveMemoryWarning() {
    super.didReceiveMemoryWarning()
}
}
