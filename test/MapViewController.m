//
//  MapViewController.m
//  test
//
//  Created by Antoine Arnoult on 11/01/2017.
//  Copyright © 2017 Antoine Arnoult. All rights reserved.
//

#import "MapViewController.h"
#import "LocationDataController.h"
#import "Location.h"

@interface MapViewController ()

@end

@implementation MapViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)viewDidAppear:(BOOL)animated {
    LocationDataController *model = [[LocationDataController alloc] init];
    Location *poi = model.getPointOfInterest;
    
    self.addrLabel.text = poi.address;
    // self.addrLabel.sizeToFit;
    [self.coffeeImg setImage:[UIImage imageNamed:poi.photoFileName]];
}

#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}

@end
