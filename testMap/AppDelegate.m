//
//  AppDelegate.m
//  testMap
//
//  Created by  on 2012/5/21.
//  Copyright (c) 2012年 __MyCompanyName__. All rights reserved.
//

#import "AppDelegate.h"
#import <CoreLocation/CoreLocation.h>
#import <MapKit/MapKit.h>
#import <Foundation/Foundation.h>
#import "MYPIN.h"
@implementation AppDelegate

@synthesize window = _window;

- (void)dealloc
{
    [_window release];
    [super dealloc];
}

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions
{
    self.window = [[[UIWindow alloc] initWithFrame:[[UIScreen mainScreen] bounds]] autorelease];
    // Override point for customization after application launch.
    self.window.backgroundColor = [UIColor whiteColor];
    
    
    
    
    MKMapView *map = [[MKMapView alloc]initWithFrame:self.window.frame];
    [self.window addSubview:map];
    [map setRegion:MKCoordinateRegionMakeWithDistance(CLLocationCoordinate2DMake(31.240,121.485), 2000, 2000) animated:YES];
    
    
    
    MYPIN *pin = [[MYPIN alloc]initWithCoordinate:CLLocationCoordinate2DMake(0, 0) title:@"xxx" subtitle:@""];
    [map addAnnotation:pin];
    
    
    [self.window makeKeyAndVisible];
    return YES;
}

@end
