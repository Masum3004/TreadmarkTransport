//
//  HistoryTableViewCell.h
//  Trademark Tansport
//
//  Created by EXCELLENT2 on 07/04/17.
//  Copyright © 2017 EXCELLENT2. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface HistoryTableViewCell : UITableViewCell
@property (weak, nonatomic) IBOutlet UIView *containerView;
@property (weak, nonatomic) IBOutlet UIImageView *refreshImageView;



//Details
@property (weak, nonatomic) IBOutlet UIView *labelView;
@property (weak, nonatomic) IBOutlet NSLayoutConstraint *labelViewHeightConstraint;
@end
