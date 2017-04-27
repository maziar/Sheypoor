//
//  SheypoorTests.m
//  SheypoorTests
//
//  Created by Maziar Saadatfar on 4/25/17.
//  Copyright © 2017 Maziar Saadatfar. All rights reserved.
//

#import <XCTest/XCTest.h>
#import "AppDelegate.h"
#import "FirstViewController.h"
#import "DetailViewController.h"

@interface SheypoorTests : XCTestCase
@property (nonatomic, strong) FirstViewController *fvc;

@end

@implementation SheypoorTests

- (void)setUp {
    [super setUp];
    
    self.fvc = [[FirstViewController alloc] initWithNibName:@"FirstViewController" bundle:nil];
    
    [self.fvc loadView];
    [self.fvc viewWillAppear:YES];
}

- (void)tearDown
{
    self.fvc = nil;
    [super tearDown];
}

- (void)testThatFirstViewControllerIsntNil
{
    XCTAssertNotNil(self.fvc, @"FirstViewController wasn't set");
}

-(void)testThatViewLoads
{
    XCTAssertNotNil(self.fvc.view, @"View not initiated properly");
}

- (void)testParentViewHasTableViewSubview
{
    NSArray *subviews = self.fvc.view.subviews;
    XCTAssertTrue([subviews containsObject:self.fvc.tableView], @"View does not have a table subview");
}

-(void)testThatTableViewLoads
{
    XCTAssertNotNil(self.fvc.tableView, @"TableView not initiated");
}

-(void)testThatTableViewDataSource
{
    XCTAssertNotNil(self.fvc.tableView.dataSource, @"TableView DataSource not initiated");
}

-(void)testThatTableViewCount
{
    XCTAssertNotEqual(self.fvc.movieList.count , 0, @"MovieList equal 0");
}

- (void)testNavigation
{
    NSIndexPath *indexPath1= [NSIndexPath indexPathForRow:0 inSection:0];
    [self.fvc tableView:self.fvc.tableView didSelectRowAtIndexPath:indexPath1];
    
    AppDelegate *appDelegate = (AppDelegate*)[UIApplication sharedApplication].delegate;
    UINavigationController *navCon = (UINavigationController*)appDelegate.window.rootViewController;
    
    XCTAssertTrue([navCon.topViewController
                   isKindOfClass:[DetailViewController class]],
                  @"Did not navigate DetailViewController");
    
    DetailViewController *dvc= (DetailViewController*)navCon.topViewController;
    
    XCTAssertNotNil(dvc.movie, @"movie is not set or is not alloc or init");
}

- (void)testPerformanceExample {
    // This is an example of a performance test case.
    [self measureBlock:^{
        // Put the code you want to measure the time of here.
    }];
}

@end
