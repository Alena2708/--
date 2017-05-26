//
//  CategoryTableViewController.swift
//  CandySearch
//
//  Created by Admin on 17.05.17.
//  Copyright © 2017 Peartree Developers. All rights reserved.
//

import UIKit



class CategoryTableViewController: UITableViewController {

var detailCity: City!
var    categoryes = [CategoryId]()

 var categ = [CategoryId]()
    
    var categid = [Int]()
    
  var indexPathsForSelectedRows: [NSIndexPath]?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.tableView.allowsMultipleSelection = true
        categoryes = [
            CategoryId(id:0, name:"Достопримечательности"),
            CategoryId(id:1, name:"Покупки"),
            CategoryId(id:2, name:"Питание"),
            CategoryId(id:3, name:"Спорт"),
            CategoryId(id:4, name:"Отдых семьей"),
            CategoryId(id:5, name:"Ночные развлечения"),
            CategoryId(id:6, name:"Здоровье"),
            CategoryId(id:7, name:"Жилье"),
            CategoryId(id:8, name:"Транспорт"),
        ]


    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
       
    }

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int
    {
        
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int
    {
        // #warning Incomplete implementation, return the number of rows
        return categoryes.count
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell
    {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "cellCategory", for: indexPath)
        let categ = categoryes[indexPath.row]
        cell.textLabel!.text = categ.name
        
             return cell
    }
    override func tableView(_ tableView: UITableView, didDeselectRowAt indexPath: IndexPath) {
        if let cell = tableView.cellForRow(at: indexPath)
        {
            if cell.accessoryType == .checkmark
            {
                
                let idex = indexPath.item
                var i = categid.count-1
                for j in 0..<i
                {
                    if categid[j] == idex
                    {
                        categid.remove(at: j)
                        i = i-1
                    }
                    else{
                    
                    }
                    cell.accessoryType = .none
                }

            }
            else
            {
                cell.accessoryType = .checkmark
            }
        }
    }
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath)
    {
        if let cell = tableView.cellForRow(at: indexPath) {
            if cell.accessoryType == .checkmark
            {
                cell.accessoryType = .none
            }
            else
            {
                cell.accessoryType = .checkmark
                categid.append(indexPath.item)
            }
        }
      
 
        
    }
    
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?)
    {
        if categid.isEmpty==false
        {
        if segue.identifier == "showMapCategory"
        {
            let destinationViewController = (segue.destination as! UINavigationController).topViewController as! MapViewController
        
            destinationViewController.detailCity = detailCity
            destinationViewController.categid = categid
        }
        }
        else
        {
            if segue.identifier == "showMapCategory"
            {
                let destinationViewController = (segue.destination as! UINavigationController).topViewController as! MapViewController
                destinationViewController.detailCity = detailCity
            }
        }
    }
    

}
