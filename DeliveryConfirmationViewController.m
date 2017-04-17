//
//  DeliveryConfirmationViewController.m
//  Trademark Tansport
//
//  Created by EXCELLENT2 on 17/04/17.
//  Copyright © 2017 EXCELLENT2. All rights reserved.
//

#import "DeliveryConfirmationViewController.h"
#import "PhotoCollectionViewCell.h"

@interface DeliveryConfirmationViewController ()

@end

@implementation DeliveryConfirmationViewController

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

#pragma mark - UITableView Datasource and Delegate method

-(NSInteger)collectionView:(UICollectionView *)collectionView numberOfItemsInSection:(NSInteger)section
{
    return 6;
}
-(UICollectionViewCell *)collectionView:(UICollectionView *)collectionView cellForItemAtIndexPath:(NSIndexPath *)indexPath
{
    
   PhotoCollectionViewCell *cell=[collectionView dequeueReusableCellWithReuseIdentifier:@"PHOTO_CELL" forIndexPath:indexPath];
//    cell.clipsToBounds = NO;
//    cell.layer.shadowColor = [[UIColor grayColor] CGColor];
//    cell.layer.shadowOffset = CGSizeMake(1,0);
//    cell.layer.shadowOpacity = 1;
    return cell;
    
}
-(CGSize)collectionView:(UICollectionView *)collectionView layout:(UICollectionViewLayout *)collectionViewLayout sizeForItemAtIndexPath:(NSIndexPath *)indexPath
{
    double side1;
    
    CGSize collectionviewSize=self.collectionView.frame.size;
    
    side1 = collectionviewSize.width/3 - 10;
    
    return CGSizeMake(side1, side1);
}
@end
