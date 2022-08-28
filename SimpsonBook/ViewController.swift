//
//  ViewController.swift
//  SimpsonBook
//
//  Created by Yigit on 28.08.2022.
//

import UIKit

class ViewController: UIViewController , UITableViewDelegate, UITableViewDataSource{
    
    
    
    

    @IBOutlet weak var tableView: UITableView!
    
    var mySimpsons = [Simpsons]()
    
    var chosenSimpson : Simpsons?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        tableView.dataSource = self
        tableView.delegate = self
        
        let homer = Simpsons(simpsonName: "Homer", simpsonJob: "Nuclear Safety", simpsonImage: UIImage(named: "Homer_Simpson")!)
       
        let bart = Simpsons(simpsonName: "Bart", simpsonJob: "Student", simpsonImage: UIImage(named: "bart_simpson")!)
        
        let lisa = Simpsons(simpsonName: "Lisa", simpsonJob: "Student", simpsonImage: UIImage(named: "Lisa_Simpson")!)
        
        let maggie = Simpsons(simpsonName: "Maggie", simpsonJob: "Baby", simpsonImage: UIImage(named: "Maggie_Simpson")!)
        
        let marge = Simpsons(simpsonName: "Marge", simpsonJob: "Housewife", simpsonImage: UIImage(named: "Marge_Simpson")!)
        
        mySimpsons.append(homer)
        mySimpsons.append(marge)
        mySimpsons.append(bart)
        mySimpsons.append(lisa)
        mySimpsons.append(maggie)
        
        
        
        
    }
    
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return mySimpsons.count
    }
    
    
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = UITableViewCell()
        var content = cell.defaultContentConfiguration()
        content.text = mySimpsons[indexPath.row].name
        cell.contentConfiguration = content
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
        chosenSimpson = mySimpsons[indexPath.row]
        
        performSegue(withIdentifier: "toDetailsVC", sender: nil)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "toDetailsVC" {
            let destinationVC = segue.destination as! DetailsViewController
            destinationVC.selectedSimpsons = chosenSimpson
            
        }
    }
    
   
    

}

