//
//  TabbarController.swift
//  fengyuekeji02
//
//  Created by 王磊磊 on 16/7/25.
//  Copyright © 2016年 丰月科技. All rights reserved.
//

import UIKit

class TabbarController: UITabBarController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        UINavigationBar.appearance().barTintColor = #colorLiteral(red: 0, green: 0.501960814, blue: 1, alpha: 1)
        UITabBar.appearance().backgroundColor = UIColor.yellow()
//        UITabBar.appearance().tintColor = UIColor.red()//
        
        
        let firstVC = FirstController();
        let nav1 = UINavigationController(rootViewController:firstVC);
        let image1 = UIImage.init(named:"首页选中")
        
        nav1.tabBarItem.selectedImage = UIImage.init(named: "首页")
        nav1.tabBarItem = UITabBarItem(title:"首页",image:image1,tag:1);
        
        
        
        let secondVC = SecondController();
        let nav2 = UINavigationController(rootViewController:secondVC)
        let image2 = UIImage(named: "分类选中")
        nav2.tabBarItem.selectedImage = UIImage.init(named: "分类")
        nav2.tabBarItem = UITabBarItem(title:"分类",image:image2, tag:2)
        
        
        
        let thirdVC = ThirdController();
        let nav3 = UINavigationController(rootViewController:thirdVC)
        let image3 = UIImage(named: "晒单区选中")
        nav3.tabBarItem.selectedImage = UIImage.init(named: "晒单区")
        nav3.tabBarItem = UITabBarItem(title:"晒单区",image:image3, tag:3)
        
        let fourthVC = FourthController();
        let nav4 = UINavigationController(rootViewController:fourthVC)
        
        let image4 = UIImage.init(named: "购物车选中")
        nav4.tabBarItem.selectedImage = UIImage.init(named: "购物车")
        nav4.tabBarItem = UITabBarItem.init(title: "购物车", image: image4, tag: 4)
        
        let fifthVC = FifthController();
        let nav5 = UINavigationController.init(rootViewController: fifthVC)
        let image5 = UIImage.init(named: "个人中心选中")
        nav5.tabBarItem.selectedImage = UIImage.init(named: "个人中心")
        nav5.tabBarItem = UITabBarItem.init(title: "个人中心", image: image5, tag: 5)
        
        let navarray = [nav1, nav2, nav3, nav4, nav5]
     
        
        self.viewControllers = navarray;
        

        
//        self.tabBarItems = array
        
//        self.viewControllers = array as? [UIViewController]
        
        
    
        
        
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
