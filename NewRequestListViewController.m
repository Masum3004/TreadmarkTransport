//
//  NewRequestListViewController.m
//  Trademark Tansport
//
//  Created by EXCELLENT2 on 13/04/17.
//  Copyright © 2017 EXCELLENT2. All rights reserved.
//

#import "NewRequestListViewController.h"
#import "MFSideMenu.h"
#import "NewRequestTableViewCell.h"
#import "AppConstant.h"

@interface NewRequestListViewController ()

@end

@implementation NewRequestListViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    
    return 5;    //count number of row from counting array hear cataGorry is An Array
}


- (UITableViewCell *)tableView:(UITableView *)tableView
         cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    
    NewRequestTableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"NEW_REQUEST_CELL"];
    cell.containerView.clipsToBounds = NO;
    cell.containerView.layer.shadowColor = [[UIColor grayColor] CGColor];
    cell.containerView.layer.shadowOffset = CGSizeMake(1,0);
    cell.containerView.layer.shadowOpacity = 1;

    return cell;
}

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath {
 
    UIViewController *viewController = [self.storyboard instantiateViewControllerWithIdentifier:NEW_REQUEST_DETAIL_Identifier];
    [self presentViewController:viewController animated:YES completion:nil];
}

@end
