//
//  DetailViewController.h
//  Sheypoor
//
//  Created by Maziar Saadatfar on 4/25/17.
//  Copyright © 2017 Maziar Saadatfar. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "BasePageViewController.h"

@interface DetailViewController : BasePageViewController
{
    
}

@property(nonatomic,retain) Movie *movie;


@property (weak, nonatomic) IBOutlet UIImageView *imgMovie;
@property (weak, nonatomic) IBOutlet UILabel *lblName;
@property (weak, nonatomic) IBOutlet UILabel *lblGenre;
@property (weak, nonatomic) IBOutlet UILabel *lblRate;
@property (weak, nonatomic) IBOutlet UILabel *lblLikeCount;
@property (weak, nonatomic) IBOutlet UILabel *lblCommentCount;
@property (weak, nonatomic) IBOutlet UILabel *lblDescription;
@property (weak, nonatomic) IBOutlet UILabel *lblTime;

@end
