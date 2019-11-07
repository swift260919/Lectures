//
//  DetailsViewController.swift
//  Lec7
//
//  Created by hackeru on 07/11/2019.
//  Copyright © 2019 hackeru. All rights reserved.
//

import UIKit

class DetailsViewController: UIViewController {
    //outlets:
    @IBOutlet weak var imageView: UIImageView!
    
    //datum
    var vegtable: Vegtable!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        imageView.image = vegtable.image
    }
}
