//
//  VegDataSource.swift
//  Lec7
//
//  Created by hackeru on 07/11/2019.
//  Copyright © 2019 hackeru. All rights reserved.
//

import UIKit

struct VegDataSource  {
    
    //an array  = [
    //with a Vegtable(name:, color:, image:)
    //]
    var vegtables = [
        Vegtable(name: "Tomato",
                 color: "Red",
                 image: UIImage(named: "tomato")
        ),
        Vegtable(name: "Avocado",
                 color: "Green",
                 image: UIImage(named: "avocado")
        ),
        Vegtable(name: "Potato",
                 color: "brown",
                 image: UIImage(named: "potato")
        ),
        Vegtable(name: "Radish",
                 color: "purple",
                 image: UIImage(named: "radish")
        ),
        Vegtable(name: "Corn",
                 color: "Yellow",
                 image: UIImage(named: "corn")
        ),
        Vegtable(name: "Eggplant",
                 color: "Brown",
                 image: UIImage(named: "eggplant")
        ),
        Vegtable(name: "Paprika",
                 color: "red",
                 image: UIImage(named: "paprika")
        ),
        Vegtable(name: "Zucchini",
                 color: "green",
                 image: UIImage(named: "zucchini")
        ),
        Vegtable(name: "Pumpkin",
                 color: "orange",
                 image: UIImage(named: "pumpkin")
        )
    ]
}
