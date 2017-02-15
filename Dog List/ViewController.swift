//
//  ViewController.swift
//  Dog List
//
//  Created by David Ratliff on 2/15/17.
//  Copyright © 2017 Dog List. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    //String array for dog names
    let dogs: [String] = ["Basset Hound", "Boxer", "Bulldog", "Chihuahua", "Daschund", "German Shepherd", "Greyhound", "Pitbull", "Poodle", "Pug"]
    
    var dogPics: [UIImage] = [UIImage(named:"basset hound.jpg")!, UIImage(named:"boxer.jpg")!, UIImage(named:"chihuahua.jpg")!, UIImage(named:"daschund.jpg")!, UIImage(named:"german shepherd.jpg")!, UIImage(named:"greyhound.jpg")!, UIImage(named:"pitbull.jpg")!, UIImage(named:"poodle.jpg")!, UIImage(named:"pug.jpg")!]
    
    
    
    let cellReusableIdentifier = "cell"
    
    @IBOutlet var tableView: UITableView!
    

    override func viewDidLoad() {
        super.viewDidLoad()
        
        tableView.delegate = self
        tableView.dataSource = self
    }
    
    //Number of rows in tableView
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return self.dogs.count
    }
    
    //Create cell for each tableView row
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell:MyCustomCell = self.tableView.dequeueReusableCell(withIdentifier: cellReusableIdentifier) as! MyCustomCell

        
        //cell.myImageView.backgroundColor = self.colors[indexPath.row]
        cell.myCellLabel.text = self.dogs[indexPath.row]
        cell.myImageView.image = self.dogPics[indexPath.row]
        
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
        print("You tapped cell number \(indexPath.row).")
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

