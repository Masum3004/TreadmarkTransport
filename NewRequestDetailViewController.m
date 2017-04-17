//
//  NewRequestDetailViewController.m
//  Trademark Tansport
//
//  Created by EXCELLENT2 on 17/04/17.
//  Copyright © 2017 EXCELLENT2. All rights reserved.
//

#import "NewRequestDetailViewController.h"
#import "NewRequestTableViewCell.h"

@interface NewRequestDetailViewController ()

@end

@implementation NewRequestDetailViewController

- (void)viewDidLoad {
   
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning {
    
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.

}
- (IBAction)btnBack:(id)sender {
    
    [self dismissViewControllerAnimated:YES completion:nil];
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    
    return 8;    //count number of row from counting array hear cataGorry is An Array
}


- (UITableViewCell *)tableView:(UITableView *)tableView
         cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    NewRequestTableViewCell *cell;
    
    if (indexPath.row == 0) {
        
        cell = [tableView dequeueReusableCellWithIdentifier:@"NEW_REQUEST_CELL1"];
    }
    else {
        
         cell = [tableView dequeueReusableCellWithIdentifier:@"NEW_REQUEST_CELL2"];
    }
   
    return cell;
}

- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath
{
    if (indexPath.row == 0 ) {
        
        return 195;
        
    }
    else {
        
//        NSString *textData = [placeholderArr objectAtIndex:indexPath.row];
//        
//        CGFloat dataTextHeight = [self getLabelHeightForIndex:textData];
//        
        
        return  73;
        
    }
    
    
}

-(CGFloat)getLabelHeightForIndex:(NSString *)string
{
    CGSize maximumSize = CGSizeMake(280, 10000);
    
    CGSize labelHeightSize = [string sizeWithFont:[UIFont fontWithName:@"Helvetica" size:18.0f] constrainedToSize:maximumSize lineBreakMode:NSLineBreakByWordWrapping];
    
    if(labelHeightSize.height < 44){
        labelHeightSize.height = 44;
    }
    
    return labelHeightSize.height;
}

@end
