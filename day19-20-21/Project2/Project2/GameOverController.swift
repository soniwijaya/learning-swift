//
//  GameOverController.swift
//  Project2
//
//  Created by Soni Wijaya on 22/06/2019.
//  Copyright © 2019 Soni Wijaya. All rights reserved.
//

import UIKit

class GameOverController: UIViewController {
    var score: String?
    @IBOutlet var Label: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        navigationItem.setHidesBackButton(true, animated: false)
        
        navigationItem.leftBarButtonItem = UIBarButtonItem(title: "Play Again", style: .plain, target: self, action: #selector(playAgain))
        
        Label.text = score
    }
    
    @objc func playAgain() {
        if let vc = storyboard?.instantiateViewController(withIdentifier: "Main") as?
            ViewController {
                navigationController?.pushViewController(vc, animated: true)
        }
    }
}
