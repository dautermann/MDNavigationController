//
//  AppDelegate.h
//  MDNavigationController
//
//  Created by Michael Dautermann on 6/26/14.
//  Copyright (c) 2014 Michael Dautermann. All rights reserved.
//

#import <Cocoa/Cocoa.h>
#import "SampleWindowController.h"

@interface AppDelegate : NSObject <NSApplicationDelegate>

// @property (assign) IBOutlet NSWindow *window;

@property (strong) SampleWindowController *sampleWC;

@end
