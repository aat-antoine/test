//
//  MapViewDetailsControllerViewController.h
//  test
//
//  Created by Antoine Arnoult on 17/01/2017.
//  Copyright © 2017 Antoine Arnoult. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <MapKit/MapKit.h>

@interface MapDetailsViewController : UIViewController {
    CLLocationManager *locationManager;
}

@property (strong, nonatomic) IBOutlet MKMapView *mapView;

@end
