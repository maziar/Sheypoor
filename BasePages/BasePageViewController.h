//
//  BasePageViewController.h
//  Sheypoor
//
//  Created by Maziar Saadatfar on 4/25/17.
//  Copyright © 2017 Maziar Saadatfar. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "Theme.h"
#import "UIImage+Extra.h"
#import "AppDelegate.h"
#import "Movie.h"

@interface BasePageViewController : UIViewController

-(void)setCurvedView:(UIView*)view;
-(void)setShadow:(UIView*)view;

-(NSString*)getFontName;
-(UIFont*)setFontSize:(CGFloat)fontSize;

@end
