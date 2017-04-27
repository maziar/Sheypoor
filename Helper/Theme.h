//
//  Theme.h
//  Sheypoor
//
//  Created by Maziar Saadatfar on 4/25/17.
//  Copyright © 2017 Maziar Saadatfar. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

#define RGB(r, g, b) [UIColor colorWithRed:(float)r / 255.0 green:(float)g / 255.0 blue:(float)b / 255.0 alpha:1.0]
#define RGBA(r, g, b, a) [UIColor colorWithRed:(float)r / 255.0 green:(float)g / 255.0 blue:(float)b / 255.0 alpha:a]

@interface Theme : NSObject

+(UIColor*)bgColor;

+(UIColor*)navBarColor;

+(UIColor*)textHeaderColor;

+(UIColor*)textColor;

+(UIColor*)rateColor;

+(UIColor*)footerBgColor;

+(UIColor*)iconColor;

+(UIColor*)iconYellowColor;

@end
