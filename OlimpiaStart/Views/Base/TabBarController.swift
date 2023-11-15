//
//  TabBarController.swift
//  OlimpiaStart
//
//  Created by Ксения Прищепова on 28.03.2023.
//

import UIKit

enum Tabs: Int {
    case feed
    case schedule
    case training
}

final class TabBarController: UITabBarController {
    
    override init(nibName nibNameOrNil: String?, bundle nibBundleOrNil: Bundle?) {
        super.init(nibName: nibNameOrNil, bundle: nibBundleOrNil)
        configure()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    private func configure() {
        tabBar.tintColor = Resources.Colors.tabBarItemAccent
        tabBar.unselectedItemTintColor = Resources.Colors.tabBarItemLight
        tabBar.backgroundColor = Resources.Colors.background

        tabBar.layer.borderColor = Resources.Colors.seporator.cgColor
        tabBar.layer.borderWidth = 1
        tabBar.layer.masksToBounds = true
        
        let feedController = FeedViewController()
        let scheduleController = ScheduleViewController()
        let trainingController = TrainingViewController()
        
        let feedNavigation = NavBarController(rootViewController: feedController)
        let scheduleNavigation = NavBarController(rootViewController: scheduleController)
        let trainingNavigation = NavBarController(rootViewController: trainingController)
        
        feedNavigation.tabBarItem = UITabBarItem(title: Resources.Strings.TabBar.feed,
                                                    image: Resources.Images.TabBar.feed,
                                                    tag: Tabs.feed.rawValue)
        scheduleNavigation.tabBarItem = UITabBarItem(title: Resources.Strings.TabBar.schedule,
                                                    image: Resources.Images.TabBar.schedule,
                                                    tag: Tabs.schedule.rawValue)
        trainingNavigation.tabBarItem = UITabBarItem(title: Resources.Strings.TabBar.training,
                                                    image: Resources.Images.TabBar.training,
                                                    tag: Tabs.training.rawValue)
        
        setViewControllers([
            feedNavigation,
            scheduleNavigation,
            trainingNavigation
        ], animated: false)
    }
   
}
