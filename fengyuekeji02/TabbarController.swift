//
//  TabbarController.swift
//  fengyuekeji02
//
//  Created by 王磊磊 on 16/7/25.
//  Copyright © 2016年 丰月科技. All rights reserved.
//

import UIKit

class TabbarController: UITabBarController {
    
    var myArray: Array <UINavigationController> = [];
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        /** 修改UINavigationBar背景色 */
        UINavigationBar.appearance().barTintColor = UIColor.white()
        
        UITabBar.appearance().backgroundColor = UIColor.yellow()
        /** 修改Tabbar的tintColo */
        //   UITabBar.appearance().tintColor = UIColor.red()
        let titleArrays: Array<NSString> = ["首页", "分类", "晒单区", "购物车", "个人中心"]
        
        let navControllers: Array<UIViewController> = [FirstController(), SecondController(), ThirdController(), FourthController(), FifthController()];
        
        
        
        for i in 0...4 {
            
            
            setVC(vc: navControllers[i], title: titleArrays[i], normalImage: titleArrays[i], selectedImage: titleArrays[i], tag: i + 1)
            
        }
        
        self.viewControllers = self.myArray;
        
    }
    
    /** 添加每一个TabbarItem的方法 */
    func setVC(vc:UIViewController, title:NSString, normalImage:NSString, selectedImage:NSString, tag:NSInteger) -> Void {
        
        /** 创建viewController */
        let VC = vc;
        
        vc.title = title as String;
        /** 创建NavigationController */
        let nav = UINavigationController.init(rootViewController: VC)
        /** 创建图片 */
        let image = UIImage.init(named: title as String)
        /** 创建Tabbar选中图片 */
        nav.tabBarItem.selectedImage = UIImage.init(named: selectedImage as String)
        
        nav.tabBarItem = UITabBarItem.init(title: title as String, image: image, tag: tag)
        
        self.myArray.insert(nav, at: self.myArray.count)
        
    }
    
    
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }        // Dispose of any resources that can be recreated.
}
