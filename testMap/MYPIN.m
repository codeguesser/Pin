//
//  MYPIN.m
//  testMap
//
//  Created by  on 2012/5/22.
//  Copyright (c) 2012年 __MyCompanyName__. All rights reserved.
//

#import "MYPIN.h"
@implementation MYPIN
@synthesize title=_title
,subtitle=_subtitle;
@synthesize coordinate=_coordinate;
-(id)initWithCoordinate:(CLLocationCoordinate2D) coordinate title:(NSString *)title subtitle:(NSString *)subtitle{
    self = [super init];
    if (self) {
        self.coordinate = coordinate;
        self.title=title;
        self.subtitle = subtitle;
    }
    return self;
}
-(void)dealloc{
    [super dealloc];
    [self.title release];
    [self.subtitle release];
    [self.title release];
}
@end
