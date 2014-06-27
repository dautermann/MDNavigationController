//
//  MDViewController.h
//
//  Created by Michael Dautermann on 4/14/14.
//

#import <Cocoa/Cocoa.h>

@class MDNavigationController;

@interface MDViewController : NSViewController

- (void) viewWillAppear;

@property (nonatomic, weak) MDNavigationController *navigationController;

// using unsafe_unretained to avoid strong reference cycles
@property (unsafe_unretained) MDViewController *parentViewController;

@end
