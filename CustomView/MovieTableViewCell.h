//
//  MovieTableViewCell.h
//  Sheypoor
//
//  Created by Maziar Saadatfar on 4/26/17.
//  Copyright © 2017 Maziar Saadatfar. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface MovieTableViewCell : UITableViewCell

@property (weak, nonatomic) IBOutlet UILabel *lblName;
@property (weak, nonatomic) IBOutlet UILabel *lblGenre;
@property (weak, nonatomic) IBOutlet UILabel *lblTime;
@property (weak, nonatomic) IBOutlet UILabel *lblDescription;
@property (weak, nonatomic) IBOutlet UILabel *lblComment;
@property (weak, nonatomic) IBOutlet UILabel *lblLike;
@property (weak, nonatomic) IBOutlet UILabel *lblRate;
@property (weak, nonatomic) IBOutlet UIImageView *imgMovie;

@property (weak, nonatomic) IBOutlet UIView *viewChild;
@property (weak, nonatomic) IBOutlet UIView *viewRate;


@end
