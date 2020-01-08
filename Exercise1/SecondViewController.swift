//
//  SecondViewController.swift
//  Exercise1
//
//  Created by MacStudent on 2020-01-08.
//  Copyright © 2020 MacStudent. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController {
    
    @IBOutlet weak var timeLabel2: UILabel!
        
    var timer2 = 1
        override func viewDidLoad()
        {
            super.viewDidLoad()
             timeLabel2.text = "\(self.timer2)"
                    
            let timer = Timer.scheduledTimer(withTimeInterval: 1.0, repeats: false) { timer in
            self.timer2 += 1
            self.performSegue(withIdentifier: "secondVC", sender: self)
          }
                
        }

        override func prepare(for segue: UIStoryboardSegue, sender: Any?)
        {
                    if segue.identifier == "secondVC"
                    {
                       // print("My second Activity")
                        let segueDestination = segue.destination as! ViewController
                        segueDestination.seconds = self.timer2
                        print(segueDestination.seconds)
                    }
                    
        }
    }
