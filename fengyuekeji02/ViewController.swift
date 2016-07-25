//
//  ViewController.swift
//  fengyuekeji02
//
//  Created by 王磊磊 on 16/7/25.
//  Copyright © 2016年 丰月科技. All rights reserved.
//

import UIKit



class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        self.view.backgroundColor = UIColor.yellow();
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        
        print("第一个控制器")
        
        self .show(SecondController(), sender: NSNull())
        
        
    }


}

