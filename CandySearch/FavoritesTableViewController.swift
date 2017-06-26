//
//  FavoritesTableViewController.swift
//  CandySearch
//
//  Created by Admin on 18.06.17.
//  Copyright © 2017 Peartree Developers. All rights reserved.
//

import UIKit

class FavoritesTableViewController: UITableViewController {

     var favorite = [City]()
    override func viewDidLoad() {
        super.viewDidLoad()

        favorite = [
          City(id:1,category:"Город", name:"Абзаково",text:"Оздоровительно-спортивный центр Абзаково расположен в Башкортостане, на восточных склонах одного из южно-урвльских хребтов Кырыкты-Тау, на склонах горы Шайтан, на высоте 820 метров над уровнvar моря.Здесь любят отдыхать не только жители блиайшего города - Магнитогорска, но и жители Урала, Сибири, а так же любител  зимних видов спорта из тенральных районов Росии. Абзаково располагает горнолыжными трассами всех категорий , включая трассы для слалома и слалома-гиганта , имеющие FIS сертификаты.Современные подъемники обеспечивают катание без очередей. Снегоуплотнительные машины осуществляют подготовку трасс.",coordinateX:53.83249709999999,coordinateY:58.596172000000024)
           // ,  City( id:2,category:"Город",name:"Адлер",text:"Адлер-курорт на Черном море, отдаленный микрорайон города Сочи. Этот район расположен на равнине, при впадении в Чёрное море реки Мзымты, с севера защищен Главным Кавказским хребтом с его вечными льдами и не тающими даже летом, вершинами, что тем самым обуславливает здесь относительно высокие среднегодовые температуры воздуха.Купальный сезон здесь продолжается 5 месяцев с июня по октябрь, летом средняя температура воздуха +26,5С, воды +24,5С. Благоприятные сезоны для санаторно-курортного лечения: осень, зима, весна. В период «зимы», средняя температура воздуха составляет +9, +10С.",coordinateX:43.427991 ,coordinateY:39.928844)
        ]
           }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
     return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return favorite.count
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cellF", for: indexPath)
let item = favorite[indexPath.row]
        cell.textLabel?.text = item.name

        return cell
    }
    
 /*   // MARK: - Segues
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "gotodetail" {
            if let indexPath = tableView.indexPathForSelectedRow {
                let city: City
                
                    city = favorite[(indexPath as NSIndexPath).row]
               
                let controller = (segue.destination as! UINavigationController).topViewController as! DetailViewController
                controller.favorite = city
                            }
        }
    }*/
    /*
    // Override to support conditional editing of the table view.
    override func tableView(_ tableView: UITableView, canEditRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the specified item to be editable.
        return true
    }
    */

    /*
    // Override to support editing the table view.
    override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCellEditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete {
            // Delete the row from the data source
            tableView.deleteRows(at: [indexPath], with: .fade)
        } else if editingStyle == .insert {
            // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
        }    
    }
    */

    /*
    // Override to support rearranging the table view.
    override func tableView(_ tableView: UITableView, moveRowAt fromIndexPath: IndexPath, to: IndexPath) {

    }
    */

    /*
    // Override to support conditional rearranging of the table view.
    override func tableView(_ tableView: UITableView, canMoveRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the item to be re-orderable.
        return true
    }
    */

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
