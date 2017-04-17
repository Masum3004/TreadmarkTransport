//
//  CurrentDriveDetailViewController.m
//  Trademark Tansport
//
//  Created by EXCELLENT2 on 17/04/17.
//  Copyright © 2017 EXCELLENT2. All rights reserved.
//

#import "CurrentDriveDetailViewController.h"
#import "CurrentDriveTableViewCell.h"

@interface CurrentDriveDetailViewController ()

@end

@implementation CurrentDriveDetailViewController

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
    CurrentDriveTableViewCell *cell;
    
    if (indexPath.row == 0) {
        
        cell = [tableView dequeueReusableCellWithIdentifier:@"CURRENT_DRIVE_CELL1"];
    }
    else if (indexPath.row == 1 || indexPath.row == 2 || indexPath.row == 3) {
       
        cell = [tableView dequeueReusableCellWithIdentifier:@"CURRENT_DRIVE_CELL2"];
        
        if (indexPath.row != 1) {
            cell.labelView.alpha = 0.0f;
            cell.labelViewHeightConstraint.constant = 0.0f;
        }
        else {
            cell.labelView.alpha = 1.0f;
            cell.labelViewHeightConstraint.constant = 36.0f;
        }
        
    }
    else {
        
        cell = [tableView dequeueReusableCellWithIdentifier:@"CURRENT_DRIVE_CELL3"];

    }
    return cell;
}

- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath
{
    if (indexPath.row == 0 ) {
        
        return 112;
        
    }
    else if (indexPath.row == 1 || indexPath.row == 2 || indexPath.row == 3)  {
        
        if (indexPath.row == 0 ) {
            
            return 188;
        }
        else {
             return 188-36;
        }
       
    }
    else {
        
         return 73;
    }

}
- (IBAction)btnBack:(id)sender {
    
    [self dismissViewControllerAnimated:YES completion:nil];
    
}

@end
