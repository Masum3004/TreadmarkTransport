//
//  MyProfileViewController.m
//  Trademark Tansport
//
//  Created by EXCELLENT2 on 10/04/17.
//  Copyright © 2017 EXCELLENT2. All rights reserved.
//

#import "MyProfileViewController.h"

#import "MFSideMenu.h"
#import "MyProfileTableViewCell.h"


@interface MyProfileViewController ()
{
    NSArray *titleArr;
}
@end

@implementation MyProfileViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    titleArr = [NSArray arrayWithObjects:@"DRIVER NUMBER", @"AGE", @"EMAIL", @"PHONE NUMBER", @"NATIONALITY", @"CURRENT FLEET", @"MEDICAL CHECK", nil];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)showLeftMenuPressed:(id)sender {
    
    [self.menuContainerViewController toggleLeftSideMenuCompletion:nil];
}
- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    
    return [titleArr count];    //count number of row from counting array hear cataGorry is An Array
}


- (UITableViewCell *)tableView:(UITableView *)tableView
         cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    
    MyProfileTableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"PROFILE_CELL"];
    cell.lblCellTitle.text = [titleArr objectAtIndex:indexPath.row];
    
    return cell;
}

- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath
{
    return 52;
}
@end
