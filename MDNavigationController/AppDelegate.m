//
//  AppDelegate.m
//  MDNavigationController
//
//  Created by Michael Dautermann on 6/26/14.
//  Copyright (c) 2014 Michael Dautermann. All rights reserved.
//

#import "AppDelegate.h"

@implementation AppDelegate

- (void)applicationDidFinishLaunching:(NSNotification *)aNotification
{
    // Insert code here to initialize your application
    
    self.sampleWC = [[SampleWindowController alloc] initWithWindowNibName:@"SampleWindow"];
    if(self.sampleWC)
    {
        [self.sampleWC.window makeKeyAndOrderFront:self];
    }
}

@end
