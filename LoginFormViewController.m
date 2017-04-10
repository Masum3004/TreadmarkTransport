//
//  LoginFormViewController.m
//  Trademark Tansport
//
//  Created by EXCELLENT2 on 05/04/17.
//  Copyright © 2017 EXCELLENT2. All rights reserved.
//

#import "LoginFormViewController.h"


@interface LoginFormViewController ()
{
    NSArray *placeholderArr;
}
@end

@implementation LoginFormViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    placeholderArr = [NSArray arrayWithObjects:@"DRIVER NUMBER", @"VEHICLE REGO NUMBER", @"TRAILER REGO NUMBER", @"HAVE YOU CONSUMED ANY ALCHOHOL OR DRUGS IN THE LAST 24 HOURS?", @"ARE YOU MEDICALLY FIT TO PERFORM YOUR WORKING DUTIES?", @"UNDER DRIVER FATIGUE MANAGEMENT PLANE HAVE YOU TAKEN YOUR REQUIRED REST BRAKS IN THE LAST 24 HOURS?", @"IS YOUR DRIVERS LICENSE CURRENT?", @"IS ALL YOUR INSUARANCES CURRENT?", nil];
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
    
    return 9;    //count number of row from counting array hear catagory is An Array
}



- (UITableViewCell *)tableView:(UITableView *)tableView
         cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    
    NSString *MyIdentifier;
    
    LoginFormTableViewCell *cell;
   
    UIColor *placeholderColor = [UIColor colorWithRed:(170/255.0) green:(170/255.0) blue:(170/255.0) alpha:1.0];

    if (indexPath.row == 0 || indexPath.row == 1) {
        
        MyIdentifier = @"CELL_TYPE_1";
        cell = [tableView dequeueReusableCellWithIdentifier:MyIdentifier];

        cell.txtCell1.attributedPlaceholder = [[NSAttributedString alloc] initWithString:[placeholderArr objectAtIndex:indexPath.row] attributes:@{NSForegroundColorAttributeName: placeholderColor}];

    }
    else if (indexPath.row == 2) {
        
        MyIdentifier = @"CELL_TYPE_2";
       
        cell = [tableView dequeueReusableCellWithIdentifier:MyIdentifier];
        cell.txtCell2.attributedPlaceholder = [[NSAttributedString alloc] initWithString:[placeholderArr objectAtIndex:indexPath.row] attributes:@{NSForegroundColorAttributeName: placeholderColor}];
        
   
    }
    else if (indexPath.row == 8) {
        
        MyIdentifier = @"CELL_TYPE_4";
        
        cell = [tableView dequeueReusableCellWithIdentifier:MyIdentifier];
    }
    else{
        
        MyIdentifier = @"CELL_TYPE_3";
        
        cell = [tableView dequeueReusableCellWithIdentifier:MyIdentifier];
        
        cell.lblCell3.text = [placeholderArr objectAtIndex:indexPath.row];
        cell.lblCell3Number.text = [NSString stringWithFormat:@"%ld.",indexPath.row - 2];
        if (indexPath.row == [placeholderArr count] - 1) {
            
            cell.sepraterView.hidden = YES;
        }
        else {
            cell.sepraterView.hidden = NO;
        }
    }
    
   
    
    return cell;
}


- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath
{
    if (indexPath.row == 0 || indexPath.row == 1) {
        
        return 63;

    }
    else if (indexPath.row == 2) {
        
        return 104;

    }
    else if (indexPath.row == 8) {
        
        return 67;
    }
    else{
        
        NSString *textData = [placeholderArr objectAtIndex:indexPath.row];
        
        CGFloat dataTextHeight = [self getLabelHeightForIndex:textData];

        
        return dataTextHeight + 50;
        
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


- (IBAction)btnNextVehicleInspection:(id)sender {
    
    UIViewController *viewController = [self.storyboard instantiateViewControllerWithIdentifier:VEHICLE_INSPECTION_Identifier];
    [self.navigationController pushViewController:viewController animated:YES];
    
}

@end
