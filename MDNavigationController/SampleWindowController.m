//
//  SampleWindowController.m
//  MDNavigationController
//
//  Created by Michael Dautermann on 6/26/14.
//  Copyright (c) 2014 Michael Dautermann. All rights reserved.
//

#import "SampleWindowController.h"

#import "SampleViewController.h"

@interface SampleWindowController ()
{
    IBOutlet NSView *_containerView;
}

@end

@implementation SampleWindowController

- (void)windowDidLoad
{
    [super windowDidLoad];
    
    // Implement this method to handle any initialization after your window controller's window has been loaded from its nib file.
    
    SampleViewController *sampleViewController = [[SampleViewController alloc] initWithNibName:@"SampleViewControllerOne" bundle:nil];
    
    [_containerView addSubview:sampleViewController.view];
    
    self.navigationController = [[MDNavigationController alloc] initWithRootViewController:sampleViewController];
    
    sampleViewController.navigationController = self.navigationController;

    self.navigationController.containerWindow = self.window;
}

@end
