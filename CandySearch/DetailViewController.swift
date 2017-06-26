

import UIKit
import MapKit
class DetailViewController: UIViewController {
  

    @IBOutlet var detailDescriptionLabel: UILabel!

    @IBOutlet weak var candyImageView: UIImageView!

    @IBOutlet weak var likebuttom: UIBarButtonItem!
       
    @IBOutlet var CityText: UITextView!
    
//    @IBOutlet var CityText: UILabel!
   
    @IBAction func addFavorite(_ sender: Any) {
       // for i in 0...favorite.count{
       likebuttom.image = (#imageLiteral(resourceName: "icons8-Like Filled-50"))
        
       // favorite.append(detailCity)
      
    
    }
    @IBOutlet var OnlineMap: UIButton!
   
 var favorite = [Favoritee]()
    var detailCity: City? {
    didSet {
      configureView()
          likebuttom.image = (#imageLiteral(resourceName: "icons8-Like Filled-50"))
    }
  }
   
  
  func configureView() {
    if let detailCity = detailCity {
        if  (detailDescriptionLabel) != nil{
        candyImageView.image = UIImage(named: detailCity.name+".jpg")
        title = detailCity.name
        CityText.text=detailCity.text
        }
    }
  }
    func configureView2() {
        if let detailCity = detailCity {
            if  (detailDescriptionLabel) != nil{
                candyImageView.image = UIImage(named: "Абзаково.jpg")
                title = "Абзаково"
                CityText.text="Оздоровительно-спортивный центр Абзаково расположен в Башкортостане, на восточных склонах одного из южно-урвльских хребтов Кырыкты-Тау, на склонах горы Шайтан, на высоте 820 метров над уровнем моря.Здесь любят отдыхать не только жители блиайшего города - Магнитогорска, но и жители Урала, Сибири, а так же любител  зимних видов спорта из тенральных районов Росии. Абзаково располагает горнолыжными трассами всех категорий , включая трассы для слалома и слалома-гиганта , имеющие FIS сертификаты.Современные подъемники обеспечивают катание без очередей. Снегоуплотнительные машины осуществляют подготовку трасс."
            }
        }
    }

    
  override func viewDidLoad() {
    super.viewDidLoad()
 
    configureView()
  /*  if detailCity?.name == "Абзаково"{
    likebuttom.image = #imageLiteral(resourceName: "icons8-Like Filled-50")
     
    }*/
  }
 
    override func didReceiveMemoryWarning() {
    super.didReceiveMemoryWarning()
  }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
   
        /*if segue.identifier == "showCategory"{
            let destinationViewController = segue.destination as! CategoryViewController
            destinationViewController.detailCity = detailCity
            
        }*/
        if segue.identifier == "showCategory"{
             let destinationViewController = (segue.destination as! UINavigationController).topViewController as! CategoryTableViewController
         //   let destinationViewController = segue.destination as! MapViewController
            destinationViewController.detailCity = detailCity
            
        }
        
        if segue.identifier == "showPhoto"{
            let destinationViewController = segue.destination as!  PhotoGaleryView
            destinationViewController.detailCity = detailCity
            
        }
        
       

    }
   
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        
        navigationController?.hidesBarsOnSwipe = true
        prefersStatusBarHidden
    }

}

    


