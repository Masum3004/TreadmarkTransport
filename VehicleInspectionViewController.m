//
//  VehicleInspectionViewController.m
//  Trademark Tansport
//
//  Created by EXCELLENT2 on 06/04/17.
//  Copyright © 2017 EXCELLENT2. All rights reserved.
//

#import "VehicleInspectionViewController.h"
#import "AppConstant.h"

#import "VehicleInspectionTableViewCell.h"

@interface VehicleInspectionViewController ()
{
    NSArray *placeholderArr;
    NSMutableArray *descriptionArr;
    UIColor *greenColor, *yellowColor, *redColor, *disableColor;
}
@end

@implementation VehicleInspectionViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    placeholderArr = [NSArray arrayWithObjects:@"VEHICLE INSPECTION", @"HAVE YOU NOTICED ANY DAMAGES TO THE EXTERIOR BODY?", @"HAVE YOU NOTICED ANY DAMAGES TO THE INTERIOR BODY?", @"IS THERE ANY VISIBLE DEFFECT TO THE VEHICLE, LEAKS, FLAT TYRE, ENGINE SOUND?", @"ENGINE OIL", @"OTHER FUILDS", @"TYRES",@"I hereby declare that I have read and understood trademark policy and requirements. I will not consume alcohol or drugs for a period of 24 hours prior to driving nor consume alcohol and drugs while I'm driving. I am medically fit to perform the duties necessary to drive." , nil];
    
    descriptionArr = [NSMutableArray arrayWithObjects:@"0",@"0",@"1",@"0",@"0",@"1",@"0",@"0", nil];
    
    greenColor = [UIColor colorWithRed:(52/255.0) green:(192/255.0) blue:(130/255.0) alpha:1.0];
    
    yellowColor = [UIColor colorWithRed:(214/255.0) green:(159/255.0) blue:(40/255.0) alpha:1.0];
    
    redColor = [UIColor colorWithRed:(232/255.0) green:(29/255.0) blue:(34/255.0) alpha:1.0];
    
    disableColor = [UIColor colorWithRed:(170/255.0) green:(171/255.0) blue:(172/255.0) alpha:1.0];
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{
    return 1;    //count of section
}


- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    
    return 8;    //count number of row from counting array hear cataGorry is An Array
}


- (UITableViewCell *)tableView:(UITableView *)tableView
         cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    
    NSString *MyIdentifier;
    
    VehicleInspectionTableViewCell *cell;
   
    
    if (indexPath.row == 0) {
        
        MyIdentifier = @"CELL_TYPE_1";
        cell = [tableView dequeueReusableCellWithIdentifier:MyIdentifier];
        
    }
    else if (indexPath.row == 1 || indexPath.row == 2 || indexPath.row == 3) {
        
        MyIdentifier = @"CELL_TYPE_2";
        
        cell = [tableView dequeueReusableCellWithIdentifier:MyIdentifier];

        cell.lblCell2.text = [placeholderArr objectAtIndex:indexPath.row];
        cell.txtCell2.layer.borderWidth = 0.6f;
        cell.txtCell2.layer.borderColor = [UIColor colorWithRed:(177/255.0) green:(178/255.0) blue:(179/255.0) alpha:0.8f].CGColor;
        
        cell.lblCell2Number.text = [NSString stringWithFormat:@"%ld.",indexPath.row];
        
        if ([[descriptionArr objectAtIndex:indexPath.row] integerValue] >0) {
            cell.txtCell2.hidden = NO;
        }
        else {
            cell.txtCell2.hidden = YES;

        }
        
        cell.cell2Switch.tag = indexPath.row;
        [cell.cell2Switch addTarget:(id)self action:@selector(cell2Switch:) forControlEvents:UIControlEventValueChanged];
    }
    
    else if (indexPath.row == 6 || indexPath.row == 4 || indexPath.row == 5){
        
        MyIdentifier = @"CELL_TYPE_3";
        
        cell = [tableView dequeueReusableCellWithIdentifier:MyIdentifier];
        cell.lblCell3.text = [placeholderArr objectAtIndex:indexPath.row];
        cell.txtCell3.layer.borderWidth = 0.6f;
        cell.txtCell3.layer.borderColor = [UIColor colorWithRed:(177/255.0) green:(178/255.0) blue:(179/255.0) alpha:0.8f].CGColor;
        
        if ([[descriptionArr objectAtIndex:indexPath.row] integerValue] >0) {
            
            if ([[descriptionArr objectAtIndex:indexPath.row] integerValue] == 1) {
                
                cell.txtCell3.hidden = YES;
                [cell.lblGood setTextColor:greenColor];
                [cell.lblLow setTextColor:disableColor];
                [cell.lblBad setTextColor:disableColor];
                
                [cell.btnCell3Good setImage:[UIImage imageNamed:@"good.png"] forState:UIControlStateNormal];
                [cell.btnCell3Bad setImage:[UIImage imageNamed:@"disable.png"] forState:UIControlStateNormal];
                [cell.btnCell3Low setImage:[UIImage imageNamed:@"disable.png"] forState:UIControlStateNormal];
            }
            else if ([[descriptionArr objectAtIndex:indexPath.row] integerValue] == 2) {
                
                 cell.txtCell3.hidden = NO;
                [cell.lblBad setTextColor:yellowColor];
                [cell.lblLow setTextColor:disableColor];
                [cell.lblGood setTextColor:disableColor];
                
                [cell.btnCell3Good setImage:[UIImage imageNamed:@"disable.png"] forState:UIControlStateNormal];
                [cell.btnCell3Bad setImage:[UIImage imageNamed:@"bad.png"] forState:UIControlStateNormal];
                [cell.btnCell3Low setImage:[UIImage imageNamed:@"disable.png"] forState:UIControlStateNormal];

            }
            else {
                
                cell.txtCell3.hidden = NO;
                [cell.lblLow setTextColor:redColor];
                [cell.lblBad setTextColor:disableColor];
                [cell.lblGood setTextColor:disableColor];
                [cell.btnCell3Good setImage:[UIImage imageNamed:@"disable.png"] forState:UIControlStateNormal];
                [cell.btnCell3Bad setImage:[UIImage imageNamed:@"disable.png"] forState:UIControlStateNormal];
                [cell.btnCell3Low setImage:[UIImage imageNamed:@"low.png"] forState:UIControlStateNormal];
            }

           
            
        }
        else {
            cell.txtCell3.hidden = YES;
            [cell.lblLow setTextColor:disableColor];
            [cell.lblBad setTextColor:disableColor];
            [cell.lblGood setTextColor:disableColor];
            [cell.btnCell3Good setImage:[UIImage imageNamed:@"disable.png"] forState:UIControlStateNormal];
            [cell.btnCell3Bad setImage:[UIImage imageNamed:@"disable.png"] forState:UIControlStateNormal];
            [cell.btnCell3Low setImage:[UIImage imageNamed:@"disable.png"] forState:UIControlStateNormal];

        }
        
        cell.btnCell3Good.tag = indexPath.row;
        cell.btnCell3Bad.tag = indexPath.row;
        cell.btnCell3Low.tag = indexPath.row;
        
        [cell.btnCell3Good addTarget:(id)self action:@selector(btnCell3Good:) forControlEvents:UIControlEventTouchDown];
        
        [cell.btnCell3Bad addTarget:(id)self action:@selector(btnCell3Bad:) forControlEvents:UIControlEventTouchDown];
        
        [cell.btnCell3Low addTarget:(id)self action:@selector(btnCell3Low:) forControlEvents:UIControlEventTouchDown];
    }
    else {
        
        MyIdentifier = @"CELL_TYPE_4";
        
        cell = [tableView dequeueReusableCellWithIdentifier:MyIdentifier];
        cell.lblCell4.text = [placeholderArr objectAtIndex:indexPath.row];
    }
    return cell;
}

- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath
{
    NSString *textData = [placeholderArr objectAtIndex:indexPath.row];
    
    CGFloat dataTextHeight = [self getLabelHeightForIndex:textData];
    

    if (indexPath.row == 0) {
        
        return 53;
        
    }
    else if (indexPath.row == 1 || indexPath.row == 2 || indexPath.row == 3) {
        
        NSInteger description = 0;
        if ([[descriptionArr objectAtIndex:indexPath.row] integerValue] >0) {
            
            description = 110;
        }
        return dataTextHeight + 60 + description;
        
    }
    else if (indexPath.row == 6 || indexPath.row == 4 || indexPath.row == 5) {
        
        NSInteger description = 0;
        if ([[descriptionArr objectAtIndex:indexPath.row] integerValue] >1) {
            description = 90;
        }
        
        return 90 + description;
    }
    else {

        return dataTextHeight + 70;
        
    }
    
    
}

-(CGFloat)getLabelHeightForIndex:(NSString *)string
{
    CGSize maximumSize = CGSizeMake(280, 10000);
    
    CGSize labelHeightSize = [string sizeWithFont:[UIFont fontWithName:@"Helvetica" size:17.0f] constrainedToSize:maximumSize lineBreakMode:NSLineBreakByWordWrapping];
    
//    if(labelHeightSize.height < 44){
//        labelHeightSize.height = 44;
//    }
    
    return labelHeightSize.height;
}


-(void)cell2Switch:(id)sender {
    
    UISwitch *switchControl = sender;
    
    if (switchControl.on) {
        
        [descriptionArr replaceObjectAtIndex:[sender tag] withObject:@"1"];
    }
    else {
         [descriptionArr replaceObjectAtIndex:[sender tag] withObject:@"0"];
    }
    
    [self.tableView reloadData];
}


-(void)btnCell3Good:(id)sender {
    
    if ([[descriptionArr objectAtIndex:[sender tag]] integerValue] != 1) {
        
        [descriptionArr replaceObjectAtIndex:[sender tag] withObject:@"1"];
    }
    [self.tableView reloadData];
}

-(void)btnCell3Bad:(id)sender {
  
    if ([[descriptionArr objectAtIndex:[sender tag]] integerValue] != 2) {
        
        [descriptionArr replaceObjectAtIndex:[sender tag] withObject:@"2"];
    }
    [self.tableView reloadData];

}

-(void)btnCell3Low:(id)sender {
    
    if ([[descriptionArr objectAtIndex:[sender tag]] integerValue] != 3) {
        
        [descriptionArr replaceObjectAtIndex:[sender tag] withObject:@"3"];
    }
    [self.tableView reloadData];

}
- (IBAction)btnContinue:(id)sender {
    
    UIViewController *viewController = [self.storyboard instantiateViewControllerWithIdentifier:OPERATION_Identifier];
    [self.navigationController pushViewController:viewController animated:YES];
}

@end
