//
//  CurrentDriveViewController.h
//  Trademark Tansport
//
//  Created by EXCELLENT2 on 13/04/17.
//  Copyright © 2017 EXCELLENT2. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <MapKit/MapKit.h>
#import <CoreLocation/CoreLocation.h>


@interface CurrentDriveViewController : UIViewController<CLLocationManagerDelegate>
{
    CLLocationManager *objLocationManager;
    double latitude_UserLocation, longitude_UserLocation;
}

@property (weak, nonatomic) IBOutlet MKMapView *objMapView; 
@end
