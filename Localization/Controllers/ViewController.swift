//
//  ViewController.swift
//  Localization
//
//  Created by Mauricio Chirino on 3/3/18.
//  Copyright © 2018 Mauricio Chirino. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var titleNavigationBar: UINavigationBar!
    @IBOutlet weak var namesTableView: UITableView!
    
    let spanishNames = ["Ana", "Bruno", "Juan", "José", "Julia", "Miguel", "Mateo"]
    let englishNames = ["Ann", "Bruce", "John", "Joseph", "Jules", "Michael", "Matthew"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }


}

extension ViewController: UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return englishNames.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "nameCell")!
        cell.textLabel?.text = englishNames[indexPath.row]
        return cell
    }
    
}
