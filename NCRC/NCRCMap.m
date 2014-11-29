//
//  NCRCMap.m
//  NCRC
//
//  Created by Peter Kraft on 11/28/14.
//  Copyright (c) 2014 HCURA. All rights reserved.
//

#import "NCRCMap.h"

@interface NCRCMap ()

@end

@implementation NCRCMap

- (void)viewDidLoad {
    [super viewDidLoad];
    CLLocationCoordinate2D noLocation = {42.379543, -71.115512};
    CLLocationCoordinate2D nwloc = {42.379884, -71.115513};
    CLLocationCoordinate2D qhloc = {42.376032, -71.115545};
    MKCoordinateRegion viewRegion = MKCoordinateRegionMakeWithDistance(noLocation, 500, 500);
    MKCoordinateRegion adjustedRegion = [_viewmap regionThatFits:viewRegion];
    [_viewmap setRegion:adjustedRegion animated:YES];
    MKPointAnnotation *nwannot = [[MKPointAnnotation alloc] init];
    [nwannot setCoordinate:nwloc];
    [nwannot setTitle:@"Northwest Labs"]; //You can set the subtitle too
    [_viewmap addAnnotation:nwannot];
    MKPointAnnotation *qhannot = [[MKPointAnnotation alloc] init];
    [qhannot setCoordinate:qhloc];
    [qhannot setTitle:@"Queen's Head Pub"]; //You can set the subtitle too
    [_viewmap addAnnotation:qhannot];
    //_viewmap.showsUserLocation = YES;
    // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
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
