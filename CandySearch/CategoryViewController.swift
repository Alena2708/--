//
//  CategoryViewController.swift
//  CandySearch
//
//  Created by Admin on 21.12.16.
//  Copyright © 2016 Peartree Developers. All rights reserved.
//

import UIKit
class CategoryViewController: UIViewController  {
    
    var detailCity: City!
    var    categoryes = [CategoryId]()
   // var places = [CategoryPlaces]()
   // var newView = [NewView]()
    
    
    @IBOutlet var switchДостопримечательности: UISwitch!
    @IBOutlet var switchПокупки: UISwitch!
    @IBOutlet var switchПитание: UISwitch!
    
 //   var newCategory = [CategoryId]()
    
    override func viewDidLoad() {
          super.viewDidLoad()
        
        categoryes = [
            CategoryId(id:1, name:"Достопримечательности"),
            CategoryId(id:2, name:"Покупки"),
            CategoryId(id:3, name:"Питание"),
            CategoryId(id:4, name:"Спорт"),
            CategoryId(id:5, name:"Отдых семьей"),
            CategoryId(id:6, name:"Ночные развлечения"),
            CategoryId(id:7, name:"Здоровье"),
            CategoryId(id:8, name:"Жилье"),
            CategoryId(id:9, name:"Транспорт"),
        ]
      /*
        if switchДостопримечательности.isOn == true{
            newCategory.append(categoryes[0])
        }
        if switchПокупки.isOn == true{
            newCategory.append(categoryes[1])
        }
        if switchПитание.isOn == true{
            newCategory.append(categoryes[2])
        }

        */
       }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
 
    
       override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        if segue.identifier == "showGoogle"{
            
            let destinationViewController = segue.destination as!  GoogleViewController
            destinationViewController.detailCity = detailCity
            
            //  destinationViewController.newView = newView
            
            
        }}
    
  /*  @IBAction func goToGoogle(_ sender: Any) {
        //создаем новую структуру и заполняем ее данными которые будут отображаться на карет в зависимости от выбранных категорий и места(города)
        
        
        /*
        
        
        for ijk in 0...places.count-1
        {
            // проверяем город(место)
            if places[ijk].idCity == detailCity.id{
                
                ///проверяем категорию
                if switchДостопримечательности.isOn == true {//если Достопримечательности
                    
                    if places[ijk].idCategory == categoryes[0].id{//если категория в мест еравна категории достопримечательности
                        
                        newView.append(NewView(name : places[ijk].name,photo: places[ijk].idPhoto,
                                               cx :places[ijk].corX, cy :places[ijk].corY,text:places[ijk].text,adresS:places[ijk].adress))
                    }
                }
                
                if switchПокупки.isOn == true {
                    if places[ijk].idCategory == categoryes[1].id{//если категория в мест еравна категории Покупки
                        
                        newView.append(NewView(name : places[ijk].name,photo: places[ijk].idPhoto,
                                               cx :places[ijk].corX, cy :places[ijk].corY,text:places[ijk].text,adresS:places[ijk].adress))
                    }
                    
                }
                
                if switchПитание.isOn == true {
                    if places[ijk].idCategory == categoryes[1].id{//если категория в мест еравна категории Покупки
                        
                        newView.append(NewView(name : places[ijk].name,photo: places[ijk].idPhoto,
                                               cx :places[ijk].corX, cy :places[ijk].corY,text:places[ijk].text,adresS:places[ijk].adress))
                    }
                    
                }
                /*   if switchПокупки.isOn == true {
                 if places[ijk].idCategory == categoryes[1].id{//если категория в мест еравна категории Покупки
                 
                 newView.append(NewView(name : places[ijk].name,photo: places[ijk].idPhoto,
                 cx :places[ijk].corX, cy :places[ijk].corY,text:places[ijk].text,adresS:places[ijk].adress))
                 }
                 
                 }*/
            }}
        if newView.count != 0 {
            
            var   mapPoint = [MKMapItem]()
            
            for i in 0...newView.count-1{
                
                
                
                
                //Defining destination
                let latitude:CLLocationDegrees = CLLocationDegrees(newView[i].cx)
                let longitude:CLLocationDegrees = CLLocationDegrees(newView[i].cy)
                
             //   let regionDistance:CLLocationDistance = 1000;
                let coordinates = CLLocationCoordinate2DMake(latitude, longitude)
              //  let regionSpan = MKCoordinateRegionMakeWithDistance(coordinates, regionDistance, regionDistance)
                
        //let options = [MKLaunchOptionsMapCenterKey: NSValue(mkCoordinate: regionSpan.center), MKLaunchOptionsMapSpanKey: NSValue(mkCoordinateSpan: regionSpan.span)]
               
                
           /*     let marker = GMSMarker(position: coordinates)
                marker.text = newView[i].name
                marker.icon = GMSMarker.markerImageWithColor(UIColor.blackColor())
                
            mapPoint.append(marker)*/
                let place = MKPlacemark(coordinate: coordinates)
                let mapItem = MKMapItem(placemark: place)
                
                mapPoint.append(mapItem)
             
                mapItem.name = newView[i].name
                
               
                 
                
            }
            MKMapItem.openMaps (with: mapPoint, launchOptions: nil)
        }
        else {
            //Defining destination
            let latitude:CLLocationDegrees = CLLocationDegrees(detailCity.coordinateX)
            let longitude:CLLocationDegrees = CLLocationDegrees(detailCity.coordinateY)
            
            let regionDistance:CLLocationDistance = 4000;
            let coordinates = CLLocationCoordinate2DMake(latitude, longitude)
            let regionSpan = MKCoordinateRegionMakeWithDistance(coordinates, regionDistance, regionDistance)
            
            let options = [MKLaunchOptionsMapCenterKey: NSValue(mkCoordinate: regionSpan.center), MKLaunchOptionsMapSpanKey: NSValue(mkCoordinateSpan: regionSpan.span)]
            
            let placemark = MKPlacemark(coordinate: coordinates)
            let mapItem = MKMapItem(placemark: placemark)
            mapItem.name = detailCity.name
            //      mapItem.description = newView[i].text
            mapItem.openInMaps(launchOptions: options)
        }

    }*/
       

    }*/
   
   

}

