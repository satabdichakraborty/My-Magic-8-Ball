//
//  ViewController.swift
//  My Magic 8 Ball
//
//  Created by Satabdi Das on 10/27/18.
//  Copyright © 2018 Satabdi Das. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    let answerArray = ["ball1", "ball2", "ball3", "ball4", "ball5"]
    var generateNum : Int = 0

    @IBOutlet weak var ballRolled: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        generateAnswers()
    }

    @IBAction func questionAsked(_ sender: UIButton) {
        generateAnswers()
    }
    
    func generateAnswers(){
       generateNum = Int.random(in: 0 ... 4)
        
       ballRolled.image = UIImage(named: answerArray[generateNum])
    }
    
    override func motionEnded(_ motion: UIEvent.EventSubtype, with event: UIEvent?) {
        generateAnswers()
    }
    
}

