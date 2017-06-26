//
//  MasterrViewController.swift
//  CandySearch
//
//  Created by Admin on 21.06.17.
//  Copyright © 2017 Peartree Developers. All rights reserved.
//

import UIKit
import CoreData
class MasterrViewController: UITableViewController {
    
    // MARK: - Properties
    var detailViewController: DetailViewController? = nil
    var cities = [City]()
    
    var filteredCandies = [City]()
    let searchController = UISearchController(searchResultsController: nil)
    
    // MARK: - View Setup
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Setup the Search Controller
        searchController.searchResultsUpdater = self as! UISearchResultsUpdating
        searchController.searchBar.delegate = self as! UISearchBarDelegate
        definesPresentationContext = true
        searchController.dimsBackgroundDuringPresentation = false
        
        // Setup the Scope Bar
        searchController.searchBar.scopeButtonTitles = ["Город", "Село","Озеро"]
        tableView.tableHeaderView = searchController.searchBar
    }
override func viewWillAppear(_ animated: Bool) {
    clearsSelectionOnViewWillAppear = splitViewController!.isCollapsed
    super.viewWillAppear(animated)
}

override func didReceiveMemoryWarning() {
    super.didReceiveMemoryWarning()
}

// MARK: - Table View
override func numberOfSections(in tableView: UITableView) -> Int {
    return 1
}

override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
    if searchController.isActive && searchController.searchBar.text != "" {
        return filteredCandies.count
    }
    return cities.count
}

override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
    let cell = tableView.dequeueReusableCell(withIdentifier: "Cell", for: indexPath)
    let city: City
    if searchController.isActive && searchController.searchBar.text != "" {
        city = filteredCandies[(indexPath as NSIndexPath).row]
    } else {
        city = cities[(indexPath as NSIndexPath).row]
    }
    cell.textLabel!.text = city.name
    cell.detailTextLabel!.text = city.category
    return cell
}

func filterContentForSearchText(_ searchText: String, scope: String = "All") {
    filteredCandies = cities.filter({( city : City) -> Bool in
        let categoryMatch = (scope == "All") || (city.category == scope)
        return categoryMatch && city.name.lowercased().contains(searchText.lowercased())
    })
    tableView.reloadData()
}

// MARK: - Segues
override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
    if segue.identifier == "showDetail" {
        if let indexPath = tableView.indexPathForSelectedRow {
            let city: City
            if searchController.isActive && searchController.searchBar.text != "" {
                city = filteredCandies[(indexPath as NSIndexPath).row]
            } else {
                city = cities[(indexPath as NSIndexPath).row]
            }
            let controller = (segue.destination as! UINavigationController).topViewController as! DetailViewController
            controller.detailCity = city
            controller.navigationItem.leftBarButtonItem = splitViewController?.displayModeButtonItem
            controller.navigationItem.leftItemsSupplementBackButton = true
        }
    }
}

}

extension MasterrViewController: UISearchBarDelegate {
    // MARK: - UISearchBar Delegate
    func searchBar(_ searchBar: UISearchBar, selectedScopeButtonIndexDidChange selectedScope: Int) {
        filterContentForSearchText(searchBar.text!, scope: searchBar.scopeButtonTitles![selectedScope])
    }
}

extension MasterrViewController: UISearchResultsUpdating {
    // MARK: - UISearchResultsUpdating Delegate
    func updateSearchResults(for searchController: UISearchController) {
        let searchBar = searchController.searchBar
        let scope = searchBar.scopeButtonTitles![searchBar.selectedScopeButtonIndex]
        filterContentForSearchText(searchController.searchBar.text!, scope: scope)
    }
}
