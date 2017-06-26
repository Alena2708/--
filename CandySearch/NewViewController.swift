//
//  NewViewController.swift
//  CandySearch
//
//  Created by Admin on 24.01.17.
//  Copyright © 2017 Peartree Developers. All rights reserved.
//

import UIKit

class NewViewController: UIViewController {
    @IBOutlet  var imageViewPreview: UIImageView!
    
   /* var NamePhoto = String()
    var ImageText = String()
    var corX = Float()
    var vorY = Float()*/
   // var detailPhoto: PhotoImage!
    @IBOutlet var currenText: UILabel!
    
    @IBOutlet var detailDescriptionLabel: UILabel!
       
   /* var detailPhoto: PhIm? {
        didSet {
            configureView()
        }
    }
    func configureView() {
        if let detailPhoto = detailPhoto {
            if  (detailDescriptionLabel) != nil{
               let data = NSData(contentsOf: URL(string:(detailPhoto.imagePhIm))!)
                imageViewPreview.image = UIImage(data: data! as Data)
                currenText.text = detailPhoto.namPhIm
            
                
         //   imageViewPreview.image =
             //  currenText.text = detailPhoto.namPhIm
             //   let data = NSData(contentsOf: URL(string:(detailPhoto.imagePhIm))!)
            //    imageViewPreview.image = UIImage(data: data as! Data)
             
            }
        }
    }*/
    //abzkovo
   // let item :String = "https://edemnayug.com/wp-content/uploads/2014/11/%D1%81%D0%BA%D1%83%D0%BB%D1%8C%D0%BF%D1%82%D1%83%D1%80%D1%8B.jpg"
    //chel
 
     let item = "https://akuaku.ru/static/2013/3/5/9b72e4fc212b40f4bd833e1010916511.jpg"
    override func viewDidLoad() {
        super.viewDidLoad()
        let data = NSData(contentsOf: URL(string:(item))!)
        if data != nil{

imageViewPreview.image = UIImage(data: data! as Data)
        }
        //abzakovo
       // currenText.text = "Океанариум"
      //  currenText.text = "Кировка"
     
        
    }
        override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        /*if segue.identifier == "showCategory"{
         let destinationViewController = segue.destination as! CategoryViewController
         destinationViewController.detailCity = detailCity
         
         }*/
        if segue.identifier == "mapdetailview"{
            let destinationViewController = (segue.destination as! UINavigationController).topViewController as! MapViewController
            //   let destinationViewController = segue.destination as! MapViewController
            destinationViewController.bollview = true
            
        }}


    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
