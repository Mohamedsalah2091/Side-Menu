//
//  ViewController.swift
//  custom menu
//
//  Created by MAK on 12/1/20.
//  Copyright © 2020 MAK. All rights reserved.
//

import UIKit

class ViewController: UIViewController,UITableViewDataSource,UITableViewDelegate{
    
    
    
    @IBOutlet weak var table: UITableView!
    @IBOutlet weak var mainView: UIView!
    var trans : CGRect!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        table.dataSource = self
        table.delegate = self
    }
    override func viewDidAppear(_ animated: Bool) {
        trans = mainView.frame
    }
    
    @IBAction func menuButton(_ sender: Any) {
        UIView.animate(withDuration: 0.5) {
            self.mainView.transform = CGAffineTransform(scaleX: 1, y: 0.8)
            self.mainView.frame.origin.x += self.view.frame.width / 2
        }
    }
    
    @IBAction func menuButton2(_ sender: Any) {
        UIView.animate(withDuration: 0.5) {
            self.mainView.transform = CGAffineTransform(rotationAngle: CGFloat( .pi / -40.0))
            self.mainView.frame.origin.x += self.view.frame.width / 2
            self.mainView.frame.origin.y += self.view.frame.width / 5
            
        }
        
        
    }
    
    @IBAction func menuButton4(_ sender: Any) {
        UIView.animate(withDuration: 0.5) {
            
            self.mainView.transform = .identity
            self.mainView.frame = self.trans
        }
        
        
    }
    
    
}


extension ViewController{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier:"cell", for: indexPath) as! TableViewCell
        cell.user.text = "User"
        cell.userImage.image = #imageLiteral(resourceName: "man-avatar-profile-vector-21372076")
        return cell
    }
}
