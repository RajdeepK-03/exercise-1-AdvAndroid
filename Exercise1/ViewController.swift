//
//  ViewController.swift
//  Exercise1
//
//  Created by MacStudent on 2020-01-06.
//  Copyright © 2020 MacStudent. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var timeLabel: UILabel!
     var seconds = 1
    var timer =   Timer()
     override func viewDidLoad() {
       super.viewDidLoad()
        timeLabel.text = "\(self.seconds)"
        if(self.seconds > 10)
                {
                    //
                    timer.invalidate()
                    timeLabel.text = "Timer Over"
                    //self.dismiss(animated: false, completion: nil)
                }
        else{
     let timer = Timer.scheduledTimer(withTimeInterval: 1.0, repeats: false) { timer in
                        self.seconds += 1
                        self.performSegue(withIdentifier: "firstVC", sender: self)
                        }
                    }
                }
                
             override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
                    if segue.identifier == "firstVC"
                    {
                        let segueDestination = segue.destination as! SecondViewController
                        segueDestination.Timer2 = self.seconds
                    }
                    
            }
            
                


         }

    
    

