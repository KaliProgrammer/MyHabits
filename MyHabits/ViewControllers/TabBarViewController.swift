//
//  TabBarViewController.swift
//  MyHabits
//
//  Created by MacBook Air on 01.11.2022.
//

import UIKit

class TabBarViewController: UITabBarController {

    override func viewDidLoad() {
        super.viewDidLoad()
        self.tabBar.tintColor = UIColor(named: "dPurple")
        setupVC()
    }
 
   func  setupVC() {
        viewControllers = [
        createNavigationController(rootVC: HabitListViewController(), title: "Привычки", image: UIImage(systemName: "rectangle.grid.1x2.fill")!),
        createNavigationController(rootVC: InfoViewController(), title: "Информация", image: UIImage(systemName: "info.circle")!)
        ]
    }
    
   func  createNavigationController(rootVC: UIViewController, title: String, image: UIImage) -> UINavigationController {
        let navigationController = UINavigationController(rootViewController: rootVC)
        navigationController.tabBarItem.title = title
        navigationController.tabBarItem.image = image
        return navigationController
    }
}
