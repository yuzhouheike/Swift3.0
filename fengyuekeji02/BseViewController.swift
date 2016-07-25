//
//  BseViewController.swift
//  fengyuekeji02
//
//  Created by 王磊磊 on 16/7/25.
//  Copyright © 2016年 丰月科技. All rights reserved.
//

import UIKit

class BseViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        let red = arc4random_uniform(255);
        let green = arc4random_uniform(255);
        let blue = arc4random_uniform(255);
        
    
        
        self.view.backgroundColor = UIColor.init(colorLiteralRed: Float(red) / 255.0, green: Float(green) / 255.0, blue: Float(blue) / 255.0, alpha: 1.0)
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
