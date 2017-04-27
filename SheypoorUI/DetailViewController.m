//
//  DetailViewController.m
//  Sheypoor
//
//  Created by Maziar Saadatfar on 4/25/17.
//  Copyright © 2017 Maziar Saadatfar. All rights reserved.
//

#import "DetailViewController.h"

@interface DetailViewController ()

@end

@implementation DetailViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
}

-(void)viewWillAppear:(BOOL)animated
{
    if (self.movie)
    {
        self.lblRate.text = self.movie.rate;
        self.lblDescription.text = self.movie.movieDescription;
        self.lblName.text = self.movie.name;
        self.lblGenre.text = self.movie.genre;
        self.lblLikeCount.text = self.movie.like;
        self.lblCommentCount.text = self.movie.comment;
        self.lblTime.text = self.movie.time;
        
        self.imgMovie.image = [UIImage imageNamed:self.movie.movieImage];
    }
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
}



@end
