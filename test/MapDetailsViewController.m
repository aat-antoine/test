//
//  MapViewDetailsControllerViewController.m
//  test
//
//  Created by Antoine Arnoult on 17/01/2017.
//  Copyright © 2017 Antoine Arnoult. All rights reserved.
//

#import "MapDetailsViewController.h"
#import "Location.h"
#import "LocationDataController.h"

@interface MapDetailsViewController ()

@end

@implementation MapDetailsViewController {
    LocationDataController *model;
}

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)viewDidAppear:(BOOL)animated {
    model = [[LocationDataController alloc] init];
    [model initDefaultPoi];
    
    CLLocationCoordinate2D poiCoordinates;
    poiCoordinates.latitude = model.myPoi.latitude;
    poiCoordinates.longitude= model.myPoi.longitude;
    
    MKCoordinateRegion viewRegion = MKCoordinateRegionMakeWithDistance(poiCoordinates, 750, 750);
    
    [self.mapView setRegion:viewRegion animated:YES];
    self.mapView.showsUserLocation = YES;
    
    [self loadUserLocation];
}

- (void)loadUserLocation {
    locationManager = [[CLLocationManager alloc] init];
    locationManager.delegate = self;
    locationManager.distanceFilter = kCLDistanceFilterNone;
    locationManager.desiredAccuracy = kCLLocationAccuracyHundredMeters;
    if ([locationManager respondsToSelector:@selector(requestWhenInUseAuthorization)]) {
        [locationManager requestWhenInUseAuthorization];
    } else {
        [locationManager startUpdatingLocation];
    }
}

- (void)locationManager:(CLLocationManager *)manager
     didUpdateLocations:(NSArray *)locations __OSX_AVAILABLE_STARTING(__MAC_NA,__IPHONE_6_0) {
    CLLocation *newLocation = [locations objectAtIndex:0];
    model.myPoi.latitude = newLocation.coordinate.latitude;
    model.myPoi.longitude = newLocation.coordinate.longitude;
    [locationManager stopUpdatingLocation];
    [self loadMapView];
}

- (void)locationManager:(CLLocationManager *)manager
       didFailWithError:(NSError *)error {
    [locationManager stopUpdatingLocation];
}

- (void) loadMapView {
    CLLocationCoordinate2D objCoor2D = {.latitude = model.myPoi.latitude, .longitude = model.myPoi.longitude};
    MKCoordinateSpan objCoorSpan = {.latitudeDelta = 0.2, .longitudeDelta = 0.2};
    MKCoordinateRegion objMapRegion = {objCoor2D, objCoorSpan};
    [self.mapView setRegion:objMapRegion];
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
