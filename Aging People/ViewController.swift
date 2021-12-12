//
//  ViewController.swift
//  Aging People
//
//  Created by لمياء فالح الدوسري on 08/05/1443 AH.
//

import UIKit

class ViewController: UIViewController {
var nameObj=people()
    var i = 0
    @IBOutlet weak var tableView: UITableView!
    override func viewDidLoad() {
        super.viewDidLoad()
        
        for _ in 0..<14{
            nameObj.age.append(Int.random(in: 1...100))
            
        }
        tableView.dataSource = self

    }
    
  

}

extension ViewController:UITableViewDataSource{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return nameObj.names.count
    }
    
  
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let call=tableView.dequeueReusableCell(withIdentifier: "call", for: indexPath)
        call.textLabel?.text=nameObj.names[indexPath.row]
        call.detailTextLabel?.text = String(nameObj.age[indexPath.row])
        //call.subtitle?.text = String(nameObj.age[indexPath.row])

        return call
    }
    
   
    



}

struct people{
    var names=["sara","ahmad","nora","khaled","tmara","saad","waad","omar","wala","fasale","lina","abdoulla","laian","raghad"]
    var age:[Int]=[]
       
    
}

