//
//  FirstViewController.m
//  Sheypoor
//
//  Created by Maziar Saadatfar on 4/25/17.
//  Copyright © 2017 Maziar Saadatfar. All rights reserved.
//

#import "FirstViewController.h"

@interface FirstViewController ()
@end

@implementation FirstViewController
@synthesize tabbar,tabbarItem1,tabbarItem2,tabbarItem3,tabbarItem4,tabbarItem5,
            movieList,tabbarHeader,tabbarItemDrama,tabbarItemAction,tabbarItemBiogrphy,
            tabbarItemAdventure,tabbarItemAnimation,scrollView;

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    [self setTabbarImage];
    
    [self setBarButtonItems];
    
    [self setUp];
    
    [self setUpHeaderTabbar];
}

-(void)setUp
{
    [tabbar setSelectedItem:tabbarItem3];
    [tabbarHeader setSelectedItem:tabbarItemAction];
    
    self.title = @"GOMOVIES";
    
    scrollView.backgroundColor = [UIColor clearColor];
    
    }

-(void)setBarButtonItems
{
    
    CGSize size =CGSizeMake(40, 40);
    UIImage* listImage =  [[UIImage imageNamed:@"listIcon.png"] imageByScalingProportionallyToSize:size];
    UIBarButtonItem *listButton = [[UIBarButtonItem alloc] initWithImage:listImage style:UIBarButtonItemStyleDone target:self action:@selector(showList)];
    
    self.navigationItem.leftBarButtonItems = [NSArray arrayWithObjects:listButton, nil];
    
    UIImage* searchImage = [[UIImage imageNamed:@"searchIcon.png"] imageByScalingProportionallyToSize:size];
    UIBarButtonItem *searchButton = [[UIBarButtonItem alloc] initWithImage:searchImage style:UIBarButtonItemStyleDone target:self action:@selector(showSearch)];
    
    self.navigationItem.rightBarButtonItems = [NSArray arrayWithObjects:searchButton, nil];

}

-(void)setUpHeaderTabbar
{
    tabbarHeader.barTintColor = [Theme navBarColor];
    [self setShadow:tabbarHeader];
    
    [self setTabbarItemAttributes:tabbarItemAnimation];
    [self setTabbarItemAttributes:tabbarItemAction];
    [self setTabbarItemAttributes:tabbarItemAdventure];
    [self setTabbarItemAttributes:tabbarItemBiogrphy];
    [self setTabbarItemAttributes:tabbarItemDrama];
    
    UIImage *background = [UIImage imageNamed:@"tabbarselected.png"];
    [tabbarHeader setSelectionIndicatorImage:background];
}

-(void)setTabbarItemAttributes:(UITabBarItem*)item
{
    [item setTitleTextAttributes:[NSDictionary dictionaryWithObjectsAndKeys:
                                  [self setFontSize:12.0], NSFontAttributeName,
                                   [UIColor whiteColor], NSForegroundColorAttributeName,
                                  nil]
                        forState:UIControlStateNormal];
    
    
    [item setTitleTextAttributes:@{ NSForegroundColorAttributeName : [UIColor whiteColor] }
                                             forState:UIControlStateSelected];
    
    
}

-(void)showList
{
    
}

-(void)showSearch
{
    
}

-(void)setTabbarImage
{
    CGSize size= CGSizeMake(40, 40);
    
    UIImage *img1=[[UIImage imageNamed:@"tabbarimage1.png"] imageByScalingProportionallyToSize:size];
    tabbarItem1.image = img1;
    
    UIImage *img2=[[UIImage imageNamed:@"tabbarimage2.png"] imageByScalingProportionallyToSize:size];
    tabbarItem2.image = img2;
    
    UIImage *img3=[[UIImage imageNamed:@"tabbarimage3.png"] imageByScalingProportionallyToSize:size];
    tabbarItem3.image = img3;

    
    UIImage *img4=[[UIImage imageNamed:@"tabbarimage4.png"] imageByScalingProportionallyToSize:size];
    tabbarItem4.image = img4;
    
    UIImage *img5=[[UIImage imageNamed:@"tabbarimage5.png"] imageByScalingProportionallyToSize:size];
    tabbarItem5.image = img5;
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
}

- (void)viewWillAppear:(BOOL)animated
{
    [super viewWillAppear:animated];
    scrollView.contentSize = CGSizeMake(tabbarHeader.frame.size.width+40, scrollView.frame.size.height);
    [self getMovieList];
    [self.tableView reloadData];
    self.tableView.tableFooterView = [[UIView alloc] init];
}

-(void)getMovieList
{
    Movie *movie1 = [[Movie alloc] init];
    movie1.name = @"Twilight";
    movie1.movieImage = @"film1.png";
    movie1.genre = @"Drama, Fantasy, Romance";
    movie1.time = @"2 hour 2 min";
    movie1.movieDescription = @"A teenage girl risks everything when she falls in love with a vampire.";
    movie1.rate = @"5.2";
    movie1.like = @"929";
    movie1.comment = @"613";
    
    Movie *movie2 = [[Movie alloc] init];
    movie2.name = @"The Trust";
    movie2.movieImage = @"film2.png";
    movie2.genre = @"Crime, Drama, Thriller";
    movie2.time = @"1 hour 32 min";
    movie2.movieDescription = @"A pair of cops investigating a drug invasion stumble upon a mysterious bank vault.";
    movie2.rate = @"5.4";
    movie2.like = @"1029";
    movie2.comment = @"435";
    
    Movie *movie3 = [[Movie alloc] init];
    movie3.name = @"In Time";
    movie3.movieImage = @"film3.png";
    movie3.genre = @"Action, Sci-Fi, Thriller";
    movie3.time = @"1 hour 49 min";
    movie3.movieDescription = @"In a future where people stop aging at 25, but are engineered to live only one more year, having the means to buy your way out of the situation is a shot at immortal youth.";
    movie3.rate = @"6.7";
    movie3.like = @"723";
    movie3.comment = @"128";
    
    Movie *movie4 = [[Movie alloc] init];
    movie4.name = @"Exposed";
    movie4.movieImage = @"film4.png";
    movie4.genre = @"Crime, Drama, Mystery";
    movie4.time = @"2 hour 2 min";
    movie4.movieDescription = @"A police detective investigates the truth behind his partner's death. The mysterious case reveals disturbing police corruption and a dangerous secret involving an unlikely young woman.";
    movie4.rate = @"4.2";
    movie4.like = @"1054";
    movie4.comment = @"438";
    
    Movie *movie5 = [[Movie alloc] init];
    movie5.name = @"Serena";
    movie5.movieImage = @"film5.png";
    movie5.genre = @"Drama, Romance";
    movie5.time = @"1 hour 49 min";
    movie5.movieDescription = @"In Depression-era North Carolina, the future of George Pemberton's timber empire becomes complicated when he marries Serena.";
    movie5.rate = @"5.4";
    movie5.like = @"1324";
    movie5.comment = @"876";
    
    movieList = [[NSArray alloc] initWithObjects:
                   movie1 ,
                   movie2 ,
                   movie3,
                   movie4,
                   movie5,
                   nil];
}

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return movieList.count;
}

- (BOOL)tableView:(UITableView *)tableView canEditRowAtIndexPath:(NSIndexPath *)indexPath
{
    return YES;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    static NSString *CellIdentifier =@"MovieTableViewCell";
    Movie *movie = (Movie*)[movieList objectAtIndex:indexPath.row];
    
    MovieTableViewCell *cell = (MovieTableViewCell *)[tableView dequeueReusableCellWithIdentifier:CellIdentifier];
    
    if (cell == nil)
    {
        NSArray *nib = [[NSBundle mainBundle] loadNibNamed:@"MovieTableViewCell" owner:self options:nil];
        cell = [nib objectAtIndex:0];
    }
    
    [self setCurvedView:cell.viewChild];
    [self setCurvedView:cell.imgMovie];
    
    cell.viewRate.layer.cornerRadius = 20;
    
    [self setShadow:cell.viewChild];
    [self setShadow:cell.imgMovie];
    [self setShadow:cell.viewRate];
    
    cell.lblName.text = movie.name;
    cell.lblRate.text = movie.rate;
    cell.lblDescription.text = movie.movieDescription;
    cell.lblGenre.text = movie.genre;
    cell.lblLike.text = movie.like;
    cell.lblComment.text = movie.comment;
    cell.lblTime.text = movie.time;
    cell.imgMovie.image = [UIImage imageNamed:movie.movieImage];
    
    cell.backgroundColor = [UIColor clearColor];
    
    
    return cell;
    
    //if this block is uncomment and comment up cell definition
    
//    static NSString *CellIdentifier =@"Cell";
//    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:CellIdentifier];
//    if (cell == nil)
//    {
//        cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:CellIdentifier];
//    }
//    
//    [cell addSubview:[self getView:movie]];
//    return cell;

    
   
}

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
    Movie *movie = (Movie*)[movieList objectAtIndex:indexPath.row];
    
    DetailViewController *detailViewController = [[DetailViewController alloc] initWithNibName:@"DetailViewController" bundle:nil];
    
    detailViewController.movie = movie;
    
    
    AppDelegate *appDelegate = (AppDelegate*)[UIApplication sharedApplication].delegate;
    UINavigationController *navCon = (UINavigationController*)appDelegate.window.rootViewController;
    
    [navCon pushViewController:detailViewController animated:YES];
}

-(CGFloat)tableView: (UITableView *)tableView heightForRowAtIndexPath:(nonnull NSIndexPath *)indexPath
{
    return 200;
}

-(UIView*)getView:(Movie*)movie
{
    UIView *view = [[UIView alloc] initWithFrame:CGRectMake(0, 0, 375, 200)];
    UIView *viewChild = [[UIView alloc] initWithFrame:CGRectMake(20, 50, 335, 140)];
    UIImageView *movieImageView= [[UIImageView alloc] initWithFrame:CGRectMake(30, 10, 135, 171)];
    UILabel *lblName = [[UILabel alloc] initWithFrame:CGRectMake(170, 5, 160, 20)];
    lblName.text = movie.name;
    lblName.textColor = [Theme textHeaderColor];
    
    UILabel *lblGenre = [[UILabel alloc] initWithFrame:CGRectMake(170, 25, 160, 15)];
    lblGenre.text = movie.genre;
    lblGenre.textColor = [Theme textColor];
    lblGenre.font = [self setFontSize:10];
    
    UILabel *lblTime = [[UILabel alloc] initWithFrame:CGRectMake(170, 40, 160, 10)];
    lblTime.text = movie.time;
    lblTime.textColor = [Theme textHeaderColor];
    lblTime.font = [self setFontSize:8];
    
    UIView *viewLine = [[UIView alloc] initWithFrame:CGRectMake(170, 54, 160, 1)];
    viewLine.backgroundColor = [Theme textColor];
    
    UILabel *lblDescription = [[UILabel alloc] initWithFrame:CGRectMake(170, 55, 160, 70)];
    lblDescription.text = movie.movieDescription;
    lblDescription.textColor = [Theme textColor];
    lblDescription.font = [self setFontSize:10];
    lblDescription.numberOfLines = 5;
    
    UILabel *lblRate = [[UILabel alloc] initWithFrame:CGRectMake(0, 0, 40, 40)];
    lblRate.text = movie.rate;
    lblRate.textColor = [UIColor whiteColor];
    lblRate.font = [self setFontSize:13];
    lblRate.textAlignment = NSTextAlignmentCenter;
    
    UIImageView *likeImageView= [[UIImageView alloc] initWithFrame:CGRectMake(170, 120, 10, 10)];
    likeImageView.image = [[UIImage imageNamed:@"heartIcon.png"] imageByScalingProportionallyToSize:CGSizeMake(20, 20)];
    UIImageView *commentImageView= [[UIImageView alloc] initWithFrame:CGRectMake(200, 120, 10, 10)];
    commentImageView.image = [[UIImage imageNamed:@"commentIcon.png"] imageByScalingProportionallyToSize:CGSizeMake(15, 15)];
    
    UILabel *lblLike = [[UILabel alloc] initWithFrame:CGRectMake(180, 120, 30, 10)];
    lblLike.text = movie.rate;
    lblLike.textColor = [Theme textHeaderColor];
    lblLike.font = [self setFontSize:8];
    
    UILabel *lblComment = [[UILabel alloc] initWithFrame:CGRectMake(212, 120, 30, 10)];
    lblComment.text = movie.comment;
    lblComment.textColor = [Theme textHeaderColor];
    lblComment.font = [self setFontSize:8];
    
    UIView *rateView = [[UIView alloc] initWithFrame:CGRectMake(145, 135, 40, 40)];
    rateView.backgroundColor = [Theme rateColor];
    rateView.layer.cornerRadius = 20;
    [rateView addSubview:lblRate];
    
    UIImage *movieImage = [UIImage imageNamed:movie.movieImage];
    movieImageView.image = movieImage;
    UIButton *btnMore = [[UIButton alloc] initWithFrame:CGRectMake(315, 5, 20, 20)];
    [btnMore addSubview:[[UIImageView alloc] initWithImage: [[UIImage imageNamed:@"moreIcon.png"] imageByScalingProportionallyToSize:CGSizeMake(20, 20)]]];
    
    view.backgroundColor = [UIColor clearColor];
    viewChild.backgroundColor = [UIColor whiteColor];
    
    [self setCurvedView:viewChild];
    [self setCurvedView:movieImageView];
    
    [self setShadow:viewChild];
    [self setShadow:movieImageView];
    [self setShadow:rateView];
    
    [viewChild addSubview:lblName];
    [viewChild addSubview:lblGenre];
    [viewChild addSubview:lblTime];
    [viewChild addSubview:viewLine];
    [viewChild addSubview:lblDescription];
    [viewChild addSubview:likeImageView];
    [viewChild addSubview:commentImageView];
    [viewChild addSubview:lblLike];
    [viewChild addSubview:lblComment];
    
    [viewChild addSubview:btnMore];
    [view addSubview:viewChild];
    [view addSubview:movieImageView];
    [view addSubview:rateView];
    
    return view;
}



@end
