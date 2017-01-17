//
//  LocationDataController.h
//  test
//
//  Created by Antoine Arnoult on 12/01/2017.
//  Copyright © 2017 Antoine Arnoult. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Location.h"

@interface LocationDataController : NSObject

@property (nonatomic) Location *myPoi;

- (Location*)getPointOfInterest;
- (void)initDefaultPoi;

@end
