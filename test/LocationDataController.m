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
    Location* loc = [[Location alloc] init];
    loc.address = @"64 quai Nicolas Rollin, Dijon, 21000";
    loc.latitude = 47.318095;
    loc.longitude = 5.019171;
    loc.photoFileName = @"coffeebeans.png";
    return loc;
}

@end
