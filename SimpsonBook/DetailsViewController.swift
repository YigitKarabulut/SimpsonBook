//
//  DetailsViewController.swift
//  SimpsonBook
//
//  Created by Yigit on 28.08.2022.
//

import UIKit

class DetailsViewController: UIViewController {

    @IBOutlet weak var lblName: UILabel!
    @IBOutlet weak var lblJob: UILabel!
    
    
    @IBOutlet weak var imageView: UIImageView!
    
    var selectedSimpsons : Simpsons?
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        lblName.text = selectedSimpsons?.name
        lblJob.text = selectedSimpsons?.job
        imageView.image = selectedSimpsons?.image
    }
    

   
}
