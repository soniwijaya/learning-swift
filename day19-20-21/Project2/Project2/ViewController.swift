//
//  ViewController.swift
//  Project2
//
//  Created by Soni Wijaya on 18/06/2019.
//  Copyright © 2019 Soni Wijaya. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet var button1: UIButton!
    @IBOutlet var button2: UIButton!
    @IBOutlet var button3: UIButton!
    
    var countries = [String]()
    var score = 0
    var correctAnswer = 0
    var times = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        countries += ["estonia", "france", "germany", "ireland", "italy", "monaco", "nigeria", "poland", "russia", "spain", "uk", "us"]
        
        button1.layer.borderWidth = 1
        button2.layer.borderWidth = 2
        button3.layer.borderWidth = 3
        
        button1.layer.borderColor = UIColor.lightGray.cgColor
        button2.layer.borderColor = UIColor(red: 1.0, green: 0.6, blue: 0.3, alpha: 1.0).cgColor
        button3.layer.borderColor = UIColor.lightGray.cgColor
        
        setScore()
        askQuestion()
    }
    
    func setScore() {
        navigationItem.leftBarButtonItem = UIBarButtonItem(title: "\(times)/10", style: .plain, target: self, action: nil)
        
        navigationItem.rightBarButtonItem = UIBarButtonItem(title: "Your score \(score)", style: .plain, target: self, action: nil)
    }
    
    func askQuestion(action: UIAlertAction! = nil) {
        countries.shuffle()
        correctAnswer = Int.random(in: 0...2)
        
        button1.setImage(UIImage(named: countries[0]), for: .normal)
        button2.setImage(UIImage(named: countries[1]), for: .normal)
        button3.setImage(UIImage(named: countries[2]), for: .normal)
        
        title = countries[correctAnswer].uppercased()
    }
    
    func gameOver(action: UIAlertAction! = nil) {
        if let vc = storyboard?.instantiateViewController(withIdentifier: "Detail") as? GameOverController {
            vc.score = "\(score)"
            navigationController?.pushViewController(vc, animated: true)
        }
    }
    
    @IBAction func buttonTapped(_ sender: UIButton) {
        var title: String
        
        if sender.tag == correctAnswer {
            title = "Correct"
            score += 1
        } else {
            title = "Wrong this is \(countries[correctAnswer])"
            score -= 1
        }
        
        times += 1
        setScore()
        
        var message = "Your score is \(score)"
        
        if (times >= 10) {
            message = "Congratulations is your final score \(score)"
            let dc = UIAlertController(title: title, message: message, preferredStyle: .alert)
            dc.addAction(UIAlertAction(title: "Done", style: .default, handler: gameOver))
            present(dc, animated: true)
        } else {
            let ac = UIAlertController(title: title, message: message, preferredStyle: .alert)
            ac.addAction(UIAlertAction(title: "Continue", style: .default, handler: askQuestion))
            present(ac, animated: true)
        }

    }
    
}

