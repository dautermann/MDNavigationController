//
//  MDNavigationController.h
//
//  Created by Michael Dautermann on 4/14/14.
//

#import "MDViewController.h"

@interface MDNavigationController : NSResponder

- (id)initWithRootViewController:(MDViewController *)rootViewController;
- (NSView*)view;

- (void)pushViewController:(MDViewController *)viewController animated:(BOOL)animated;
- (MDViewController *)popViewControllerAnimated:(BOOL)animated;

// something has to host our views... it can either be a...
@property (nonatomic, strong) NSWindow *containerWindow;
// ... or a
@property (nonatomic, strong) NSView *containerView;

@property (nonatomic, strong) MDViewController *rootViewController;

@end

