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
    self.navigationController.navigationBar.hidden = NO;
    CLLocationCoordinate2D noLocation = {42.379543, -71.115512};
    CLLocationCoordinate2D nwloc = {42.379884, -71.115513};
    CLLocationCoordinate2D qhloc = {42.376032, -71.115545};
    CLLocationCoordinate2D pfoho = {42.382364, -71.125013};
    CLLocationCoordinate2D cabot = {42.381857, -71.123908};
    CLLocationCoordinate2D currier = {42.381726, -71.125678};
    CLLocationCoordinate2D adams = {42.372013, -71.117092};
    CLLocationCoordinate2D quincy = {42.370830, -71.116716};
    CLLocationCoordinate2D lowell = {42.371080, -71.118449};
    CLLocationCoordinate2D kirkland = {42.370887, -71.120588};
    CLLocationCoordinate2D eliot = {42.370110, -71.121077};
    CLLocationCoordinate2D winthrop = {42.370379, -71.119248};
    CLLocationCoordinate2D dunster = {42.371897, -71.114875};
    CLLocationCoordinate2D mather = {42.368548, -71.115155};
    CLLocationCoordinate2D leverett = {42.369840, -71.117118};
    CLLocationCoordinate2D tstop = {42.373656, -71.118921};
    
    
    MKCoordinateRegion viewRegion = MKCoordinateRegionMakeWithDistance(noLocation, 500, 500);
    MKCoordinateRegion adjustedRegion = [_viewmap regionThatFits:viewRegion];
    [_viewmap setRegion:adjustedRegion animated:YES];
    
    MKPointAnnotation *nwannot = [[MKPointAnnotation alloc] init];
    [nwannot setCoordinate:nwloc];
    [nwannot setTitle:@"Northwest Labs"];
    [_viewmap addAnnotation:nwannot];
    
    MKPointAnnotation *qhannot = [[MKPointAnnotation alloc] init];
    [qhannot setCoordinate:qhloc];
    [qhannot setTitle:@"Queen's Head Pub"];
    [_viewmap addAnnotation:qhannot];
    
    MKPointAnnotation *pfohoannot = [[MKPointAnnotation alloc] init];
    [pfohoannot setCoordinate:pfoho];
    [pfohoannot setTitle:@"Pforzheimer House"];
    [_viewmap addAnnotation:pfohoannot];
    
    MKPointAnnotation *currierannot = [[MKPointAnnotation alloc] init];
    [currierannot setCoordinate:currier];
    [currierannot setTitle:@"Currier House"];
    [_viewmap addAnnotation:currierannot];
    
    MKPointAnnotation *cabotannot = [[MKPointAnnotation alloc] init];
    [cabotannot setCoordinate:cabot];
    [cabotannot setTitle:@"Cabot House"];
    [_viewmap addAnnotation:cabotannot];
    
    MKPointAnnotation *adamsannot = [[MKPointAnnotation alloc] init];
    [adamsannot setCoordinate:adams];
    [adamsannot setTitle:@"Adams House"];
    [_viewmap addAnnotation:adamsannot];
    
    MKPointAnnotation *quincyannot = [[MKPointAnnotation alloc] init];
    [quincyannot setCoordinate:quincy];
    [quincyannot setTitle:@"Quincy House"];
    [_viewmap addAnnotation:quincyannot];
    
    MKPointAnnotation *lowellannot = [[MKPointAnnotation alloc] init];
    [lowellannot setCoordinate:lowell];
    [lowellannot setTitle:@"Lowell House"];
    [_viewmap addAnnotation:lowellannot];
    
    MKPointAnnotation *kirklandannot = [[MKPointAnnotation alloc] init];
    [kirklandannot setCoordinate:kirkland];
    [kirklandannot setTitle:@"Kirkland House"];
    [_viewmap addAnnotation:kirklandannot];
    
    MKPointAnnotation *eliotannot = [[MKPointAnnotation alloc] init];
    [eliotannot setCoordinate:eliot];
    [eliotannot setTitle:@"Eliot House"];
    [_viewmap addAnnotation:eliotannot];
    
    MKPointAnnotation *winthropannot = [[MKPointAnnotation alloc] init];
    [winthropannot setCoordinate:winthrop];
    [winthropannot setTitle:@"Winthrop House"];
    [_viewmap addAnnotation:winthropannot];
    
    MKPointAnnotation *dunsterannot = [[MKPointAnnotation alloc] init];
    [dunsterannot setCoordinate:dunster];
    [dunsterannot setTitle:@"Dunster House"];
    [_viewmap addAnnotation:dunsterannot];
    
    
    MKPointAnnotation *matherannot = [[MKPointAnnotation alloc] init];
    [matherannot setCoordinate:mather];
    [matherannot setTitle:@"Mather House"];
    [_viewmap addAnnotation:matherannot];
    
    
     MKPointAnnotation *leverettannot = [[MKPointAnnotation alloc] init];
    [leverettannot setCoordinate:leverett];
    [leverettannot setTitle:@"Leverett House"];
    [_viewmap addAnnotation:leverettannot];
    
    MKPointAnnotation *tstopannot = [[MKPointAnnotation alloc] init];
    [tstopannot setCoordinate:tstop];
    [tstopannot setTitle:@"Harvard Square T Stop"];
    [_viewmap addAnnotation:tstopannot];
    
    
    
    //_viewmap.showsUserLocation = YES;
    // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


-(void) viewWillDisappear:(BOOL)animated {
    if ([self.navigationController.viewControllers indexOfObject:self]==NSNotFound) {
        self.navigationController.navigationBar.hidden = YES;
        // back button was pressed.  We know this is true because self is no longer
        // in the navigation stack.
    }
    [super viewWillDisappear:animated];
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
