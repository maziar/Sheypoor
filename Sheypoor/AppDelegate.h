//
//  AppDelegate.h
//  Sheypoor
//
//  Created by Maziar Saadatfar on 4/25/17.
//  Copyright © 2017 Maziar Saadatfar. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <CoreData/CoreData.h>

@interface AppDelegate : UIResponder <UIApplicationDelegate>

@property (strong, nonatomic) UIWindow *window;

@property (readonly, strong) NSPersistentContainer *persistentContainer;

- (void)saveContext;


@end

