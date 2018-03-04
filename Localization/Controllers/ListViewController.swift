//
//  ViewController.swift
//  Localization
//
//  Created by Mauricio Chirino on 3/3/18.
//  Copyright © 2018 Mauricio Chirino. All rights reserved.
//

import UIKit

class ListViewController: UIViewController {
    
    @IBOutlet weak var namesTableView: UITableView!
    
//    let spanishNames = ["Ana", "Bruno", "Juan", "José", "Julia", "Miguel", "Mateo"]
//    let names = ["Ann", "Bruce", "John", "Joseph", "Jules", "Michael", "Matthew"]
    typealias listView = Indexes.view.list
    let names = [].localized(listView.names.rawValue, .List)
    
    override func viewDidLoad() {
        super.viewDidLoad()
        title = listView.title.rawValue.localized(.List)
    }
    
}

extension ListViewController: UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return names.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "nameCell")!
        cell.textLabel?.text = names[indexPath.row]
        return cell
    }
    
}
