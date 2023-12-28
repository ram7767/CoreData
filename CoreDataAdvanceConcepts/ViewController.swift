//
//  ViewController.swift
//  CoreDataAdvanceConcepts
//
//  Created by Ram on 28/12/23.
//

import UIKit
import CoreData

class ViewController: UIViewController {
    
    @IBOutlet weak var listTableView: UITableView!
    
    var persons = [PersonData]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    @IBAction func actionOnAddBarButton(_ sender: Any) {
        let vc = UIStoryboard.init(name: "Main", bundle: Bundle.main).instantiateViewController(identifier: "AddNewPersonViewController") as! AddNewPersonViewController 
        navigationController?.pushViewController(vc, animated: true)
    }
    
    
}

extension ViewController: UITableViewDelegate, UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 5
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "MainTableViewCell" ) as! MainTableViewCell
        cell.configCell(person: nil)
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
    }
}

