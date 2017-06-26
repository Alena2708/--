//
//  FavoriteDetail.swift
//  CandySearch
//
//  Created by Admin on 26.06.17.
//  Copyright © 2017 Peartree Developers. All rights reserved.
//

import UIKit

class FavoriteDetail: UIViewController {
    @IBOutlet weak var imageview: UIImageView!

    @IBOutlet weak var textview: UITextView!
    var detailCity :City?
    
    override func viewDidLoad() {
        super.viewDidLoad()
configureView2()
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func configureView2() {
        
                imageview.image = UIImage(named: "Абзаково.jpg")
                title = "Абзаково"
                textview.text="Оздоровительно-спортивный центр Абзаково расположен в Башкортостане, на восточных склонах одного из южно-урвльских хребтов Кырыкты-Тау, на склонах горы Шайтан, на высоте 820 метров над уровнем моря.Здесь любят отдыхать не только жители блиайшего города - Магнитогорска, но и жители Урала, Сибири, а так же любител  зимних видов спорта из тенральных районов Росии. Абзаково располагает горнолыжными трассами всех категорий , включая трассы для слалома и слалома-гиганта , имеющие FIS сертификаты.Современные подъемники обеспечивают катание без очередей. Снегоуплотнительные машины осуществляют подготовку трасс."
            
       
    }

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
