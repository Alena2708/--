//
//  MapViewController.swift
//  CandySearch
//
//  Created by Admin on 13.05.17.
//  Copyright © 2017 Peartree Developers. All rights reserved.
//

import UIKit
import GoogleMaps

class MapViewController: UIViewController {

        var detailCity: City!
    var categoryy : CategoryId!
    var mapView = GMSMapView()
    var menuShowing = false
    var categid = [Int]()
    
    @IBOutlet weak var segmentedControl: UISegmentedControl!
    
    @IBAction func indexChange(_ sender: UISegmentedControl) {
        switch segmentedControl.selectedSegmentIndex
        {
        case 0: mapView.mapType = GMSMapViewType.normal
        case 1: self.mapView.mapType = GMSMapViewType.satellite
        case 2:  self.mapView.mapType = GMSMapViewType.hybrid
        default:
            break;
        }
        
    }
    override func loadView() {
        //Челябинск
        if detailCity.id == 22
        {
            
            if categid.count != nil
            {
                for i in 0...8
                {
                    if categid[i] == 0
                    {
                        let camera = GMSCameraPosition.camera(withLatitude: CLLocationDegrees(detailCity.coordinateX), longitude: CLLocationDegrees(detailCity.coordinateY), zoom: 12)
                        let mapView = GMSMapView.map(withFrame: .zero, camera: camera)
                        self.view = mapView
                        
                        let d1_22 = GMSMarker()
                        d1_22.position = CLLocationCoordinate2DMake(55.159255, 61.363087)
                        d1_22.title = "Памятник И. В. Курчатову"
                        d1_22.snippet = "Памятник Курчатову — памятник знаменитому академику-ядерщику был открыт в 1986 году к 250-летию Челябинска на вновь созданной площади Науки около здания Южно-Уральского государственного университета по заказу челябинского горисполкома, председателем которого в то время был Пётр Сумин. С 2014 года памятник включен в единый реестр объектов культурного наследия Российской Федераци"
                        d1_22.icon = GMSMarker.markerImage(with: .green)
                        d1_22.map = mapView
                        
                        let d2_22 = GMSMarker()
                        d2_22.position = CLLocationCoordinate2DMake(55.1443, 61.4174)
                        d2_22.title = "Площадь Восставших"
                        d2_22.snippet = "В 1905 году на территории будущей площади было построено здание городской пожарной части. Площадь, располагавшаяся при городской пожарной части получила название Пожарной, в народе так же часто именовалась как «площадь у каланчи». В непосредственной близости от Пожарной площади находилась железнодорожная станция и завод «Столь и Ко», что отложило отпечаток на её дальнейшую судьбу. Так как данная площадь считалась центральной для привокзального посёлка, в революционные годы именно здесь рабочие Челябинского завода «Столь и Ко» проводили свои демонстрации. На демонстрациях присутствовали известные Челябинские революционеры, в том числе Дмитрий Колющенко. В 1919 году события на Пожарной площади дали старт восстанию большевиков против армии Колчака. В условленное время на площадь вышли отряды железнодорожников, рабочих завода «Столь и Ко» и шахтёры, и атаковали отряды белогвардейцев на станции Челябинск. В память об этих событиях 20 февраля 1920 года площадь получила название Восставших (так же применялось название — Восстания). В 1925 году в центре площади был установлен памятник «Освобождённому труду» (другое название: «Памятник восставшему рабочему»). В 1948 году на площади был построен кинотеатр, получивший имя в честь тридцатилетия ВЛКСМ (ныне ул. Цвиллинга, 81). После строительства кинотеатра, «Памятник восставшему рабочему» оказался во дворе нового учреждения культуры, тем самым монумент оказался закрытый для обзора прохожих. Со временем было принято решение о демонтаже памятника. 6 ноября 1967 года на здании кинотеатра была установлена мемориальная доска, в память о событиях 1919 года. В конце 90-х годов XX века мемориальную доску со здания кинотеатра сняли, но 22 февраля 2014 года новыми хозяевами здания отреставрированная памятная доска была возвращена на прежнее место.[4] В настоящее время (2015) на городских картах площадь Восставших не обозначена."
                        d2_22.map = mapView
                        d2_22.icon = GMSMarker.markerImage(with: .green)
                        
                    }
                    if categid[i] == 1
                    {
                    
                    }
                }
            
            }
            else
            {
                let camera = GMSCameraPosition.camera(withLatitude: CLLocationDegrees(detailCity.coordinateX), longitude: CLLocationDegrees(detailCity.coordinateY), zoom: 12)
                let mapView = GMSMapView.map(withFrame: .zero, camera: camera)
                self.view = mapView
            
            }
        }
        
        
        
        
        
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        self.mapView.isTrafficEnabled = true;
        self.mapView.settings.myLocationButton = true;
      
    }
    
  
    

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
       
    }
/*    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
      
        if segue.identifier == "showCategory"{
          //  let destinationViewController = (segue.destination as! UINavigationController).topViewController as! MapViewController
               let destinationViewController = segue.destination as! CategoryTableViewController
            destinationViewController.detailCity = detailCity
            
        }
    }*/

 
}
