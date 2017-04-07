//
//  HistoryViewController.m
//  Trademark Tansport
//
//  Created by EXCELLENT2 on 07/04/17.
//  Copyright © 2017 EXCELLENT2. All rights reserved.
//

#import "HistoryViewController.h"
#import "MFSideMenu.h"
#import "HistoryTableViewCell.h"



@interface HistoryViewController ()

@end

@implementation HistoryViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)showLeftMenuPressed:(id)sender {
    
    [self.menuContainerViewController toggleLeftSideMenuCompletion:nil];
}
- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{
    return 1;    //count of section
}


- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    
    return 5;    //count number of row from counting array hear cataGorry is An Array
}


- (UITableViewCell *)tableView:(UITableView *)tableView
         cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    
    HistoryTableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"HISTORY_CELL"];
    cell.containerView.clipsToBounds = NO;
    cell.containerView.layer.shadowColor = [[UIColor grayColor] CGColor];
    cell.containerView.layer.shadowOffset = CGSizeMake(1,0);
    cell.containerView.layer.shadowOpacity = 0.8;
    return cell;
}

@end
