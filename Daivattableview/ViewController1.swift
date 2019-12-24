//
//  ViewController1.swift
//  Daivattableview
//
//  Created by COE-008 on 24/12/19.
//  Copyright © 2019 COE-008. All rights reserved.
//

import UIKit

class ViewController1: UIViewController {

    @IBOutlet weak var img: UIImageView!
    var arr1 = [["Image":#imageLiteral(resourceName: "4.jpeg") ,"Name":"His Wife"]]
    
    
    var dimg = UIImage()
    var price1 = ""
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        img.image = dimg
        lbl1.text = price1
        

        // Do any additional setup after loading the view.
    }
    @IBOutlet weak var lbl1: UILabel!
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
