//
//  FirstViewController.h
//  Sheypoor
//
//  Created by Maziar Saadatfar on 4/25/17.
//  Copyright © 2017 Maziar Saadatfar. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "BasePageViewController.h"
#import "DetailViewController.h"
#import "MovieTableViewCell.h"

@interface FirstViewController : BasePageViewController<UITableViewDelegate,UITableViewDataSource>

@property(retain,nonatomic) NSArray *movieList;

@property (weak, nonatomic) IBOutlet UITabBar *tabbar;

@property (weak, nonatomic) IBOutlet UITabBarItem *tabbarItem5;

@property (weak, nonatomic) IBOutlet UITabBarItem *tabbarItem4;

@property (weak, nonatomic) IBOutlet UITabBarItem *tabbarItem3;

@property (weak, nonatomic) IBOutlet UITabBarItem *tabbarItem2;

@property (weak, nonatomic) IBOutlet UITabBarItem *tabbarItem1;
@property (weak, nonatomic) IBOutlet UITableView *tableView;
@property (weak, nonatomic) IBOutlet UIScrollView *scrollView;

@property (weak, nonatomic) IBOutlet UITabBar *tabbarHeader;
@property (weak, nonatomic) IBOutlet UITabBarItem *tabbarItemAction;

@property (weak, nonatomic) IBOutlet UITabBarItem *tabbarItemAnimation;

@property (weak, nonatomic) IBOutlet UITabBarItem *tabbarItemBiogrphy;

@property (weak, nonatomic) IBOutlet UITabBarItem *tabbarItemDrama;

@property (weak, nonatomic) IBOutlet UITabBarItem *tabbarItemAdventure;





@end
