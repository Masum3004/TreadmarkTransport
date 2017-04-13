//
//  InProcessViewController.m
//  Trademark Tansport
//
//  Created by EXCELLENT2 on 13/04/17.
//  Copyright © 2017 EXCELLENT2. All rights reserved.
//

#import "InProcessViewController.h"
#import "InProcessTableViewCell.h"

@interface InProcessViewController ()

@end

@implementation InProcessViewController

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
    
    InProcessTableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"INPROCESS_CELL"];
    cell.containerView.clipsToBounds = NO;
    cell.containerView.layer.shadowColor = [[UIColor grayColor] CGColor];
    cell.containerView.layer.shadowOffset = CGSizeMake(1,0);
    cell.containerView.layer.shadowOpacity = 1;
    return cell;
}


@end
