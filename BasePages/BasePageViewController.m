//
//  BasePageViewController.m
//  Sheypoor
//
//  Created by Maziar Saadatfar on 4/25/17.
//  Copyright © 2017 Maziar Saadatfar. All rights reserved.
//

#import "BasePageViewController.h"

@interface BasePageViewController ()

@end

@implementation BasePageViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    [self setStatusBarBackgroundColor];
    self.view.backgroundColor = [Theme bgColor];
    
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
}

-(void)setCurvedView:(UIView*)view
{
    view.layer.cornerRadius = 3;
    view.layer.masksToBounds = YES;
}

-(void)setShadow:(UIView*)view
{
    view.layer.masksToBounds = NO;
    view.layer.shadowOffset = CGSizeMake(1, 1);
    view.layer.shadowRadius = 3;
    view.layer.shadowOpacity = 0.3;
}

-(NSString*)getFontName
{
    return @"Helvetica";
}

-(UIFont*)setFontSize:(CGFloat)fontSize
{
   return [UIFont fontWithName:[self getFontName] size:fontSize];
}

- (void)setStatusBarBackgroundColor
{
    
    UIView *statusBar = [[[UIApplication sharedApplication] valueForKey:@"statusBarWindow"] valueForKey:@"statusBar"];
    
    if ([statusBar respondsToSelector:@selector(setBackgroundColor:)]) {
        statusBar.backgroundColor = [Theme navBarColor];
    }
}

@end
