//
//  Location.h
//  test
//
//  Created by Antoine Arnoult on 12/01/2017.
//  Copyright © 2017 Antoine Arnoult. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Location : NSObject

@property (strong, nonatomic) NSString *address;
@property (strong, nonatomic) NSString *photoFileName;
@property (nonatomic) float latitude;
@property (nonatomic) float longitude;

@end
