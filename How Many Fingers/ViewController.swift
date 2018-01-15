//
//  ViewController.swift
//  How Many Fingers
//
//  Created by Mirko Cukich on 1/15/18.
//  Copyright © 2018 Digital Mirko. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var guessTextField: UITextField!
    
    @IBOutlet weak var answerLbl: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func guessBtn(_ sender: Any) {
        // Checks to make sure there is text there
        if let guess = guessTextField.text {
            
            // Checks to make sure entry entered is a number
            if let guessAsNumber = Int(guess) {
                
                // Random number generator from 0 to 5
                let fingers = arc4random_uniform(6)
                
                // Posting either correct or incorrect answer
                if guessAsNumber == fingers {
                    answerLbl.text = "You're Right!"
                } else {
                    answerLbl.text = "Wrong! It was a \(fingers)"
                }
            }
        }
    }
}

