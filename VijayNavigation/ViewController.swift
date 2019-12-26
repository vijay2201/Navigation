//
//  ViewController.swift
//  Daivattableview
//
//  Created by COE-008 on 24/12/19.
//  Copyright © 2019 COE-008. All rights reserved.
//

import UIKit

class ViewController: UIViewController,UITableViewDelegate,UITableViewDataSource {
    var arr = [["Image":#imageLiteral(resourceName: "1.jpg") , "Name":"Virat1"]]
    
    
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return arr.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "mycell", for: indexPath) as! TableViewCell
        cell.img1.image = arr[indexPath.row]["Image"] as! UIImage
        cell.lbl2.text = arr[indexPath.row]["Name"] as! String
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let Navigate = self.storyboard?.instantiateViewController(withIdentifier: "page2" ) as! ViewController1
        
        self.navigationController?.pushViewController(Navigate, animated: true)
        Navigate.dimg = arr[indexPath.row]["Image"] as! UIImage
        Navigate.price1 = arr[indexPath.row]["Name"] as! String
        
        
        
    }
    

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

