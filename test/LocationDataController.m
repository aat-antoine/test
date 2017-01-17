//
//  LocationDataController.m
//  test
//
//  Created by Antoine Arnoult on 12/01/2017.
//  Copyright © 2017 Antoine Arnoult. All rights reserved.
//

#import "LocationDataController.h"

@implementation LocationDataController

- (Location*)getPointOfInterest {
    self.myPoi = [[Location alloc] init];
    self.myPoi.address = @"64 quai Nicolas Rollin, Dijon, 21000";
    self.myPoi.latitude = 47.318095;
    self.myPoi.longitude = 5.019171;
    self.myPoi.photoFileName = @"coffeebeans.png";
    return self.myPoi;
}

- (void)initDefaultPoi {
    self.myPoi = [[Location alloc] init];
    self.myPoi.address = @"64 quai Nicolas Rollin, Dijon, 21000";
    self.myPoi.latitude = 47.318095;
    self.myPoi.longitude = 5.019171;
    self.myPoi.photoFileName = @"coffeebeans.png";
}

@end
