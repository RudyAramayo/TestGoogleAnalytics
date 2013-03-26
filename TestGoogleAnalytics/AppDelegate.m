//
//  AppDelegate.m
//  TestGoogleAnalytics
//
//  Created by Villela Medina on 3/26/13.
//  Copyright (c) 2013 OrbitusRobotics. All rights reserved.
//

#import "AppDelegate.h"
#import "GATracking.h"
#import "GAGeneralEvent.h"

@implementation AppDelegate

- (void)dealloc
{
    [super dealloc];
}

- (void)applicationDidFinishLaunching:(NSNotification *)aNotification
{
    // Insert code here to initialize your application
    NSLog(@"Howdy!");
    GATracking *tracking = [GATracking trackerWithID:@"UA-39557747-XX"]; /// <---------- YOUR ID here
    //GATracking *tracking = [GATracking sharedTracker];
    [tracking sendView:@"MainView"];
    [tracking sendEventWithCategory:@"States" withAction:@"Load" withLabel:@"Screen load" withValue:@(100)];
    
    [self.window.contentView setWantsLayer:YES];
    
    //[[self.window.contentView layer] setBackgroundColor:[[NSColor selectedMenuItemColor] CGColor]];
    
}

@end
