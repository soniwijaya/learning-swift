//
//  ViewController.swift
//  projectday23
//
//  Created by Soni Wijaya on 24/06/2019.
//  Copyright © 2019 Soni Wijaya. All rights reserved.
//

import UIKit

class ViewController: UITableViewController {
    var pictures = [String]()

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        title = "Countries"
        
        let fm = FileManager.default
        let path = Bundle.main.resourcePath!
        let items = try! fm.contentsOfDirectory(atPath: path)
        
        for item in items {
            if item.hasSuffix("@3x.png") {
                pictures.append(item)
            }
        }
        
        print(pictures)
    }
    
    func changeString(_ path: IndexPath) -> String {
        let namePicture = pictures[path.row]
        let endOfSentence = namePicture.firstIndex(of: "@")!
        let firstSentence = namePicture[...endOfSentence]
        
        return "\(firstSentence.prefix(firstSentence.count - 1))"
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return pictures.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "Picture", for: indexPath)
        cell.textLabel?.text = changeString(indexPath)
        cell.imageView?.image = UIImage(named: pictures[indexPath.row])
        return cell
    }
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        if let vc = storyboard?.instantiateViewController(withIdentifier: "Detail") as? DetailViewController {
            vc.selectedImage = changeString(indexPath)
            navigationController?.pushViewController(vc, animated: true)
        }
    }
}

