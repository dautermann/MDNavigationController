//
//  MDNavigationController.m
//
//  Created by Michael Dautermann on 4/14/14.
//

#import "MDNavigationController.h"

@interface MDNavigationController ()

@property (nonatomic, strong) NSMutableArray *viewControllerStack;

@end

@implementation MDNavigationController

- (id)initWithRootViewController:(MDViewController *)rootViewController
{
    self = [super init];
    if (self)
    {
        self.rootViewController = rootViewController;
        self.rootViewController.navigationController = self;
        self.viewControllerStack = [[NSMutableArray alloc] initWithObjects:self.rootViewController,nil];
    }
    return self;
}

- (NSView*)view
{
    MDViewController *topViewController = [self.viewControllerStack objectAtIndex:[self.viewControllerStack count] - 1];
    return topViewController.view;
}

- (void)pushViewController:(MDViewController *)viewController animated:(BOOL)animated
{
    if (viewController != nil) {
        [self removeTopView];
        [self.viewControllerStack addObject:viewController];
        viewController.navigationController = self;
        [viewController viewWillAppear];
        [self addTopView];
    }
}

- (MDViewController *)popViewControllerAnimated:(BOOL)animated
{
    MDViewController *topViewController = [self.viewControllerStack objectAtIndex:[self.viewControllerStack count] - 1];
    [self removeTopView];
    [self.viewControllerStack removeLastObject];
    MDViewController *newTopVC = [self.viewControllerStack lastObject];
    [newTopVC viewWillAppear];
    [self addTopView];
    
    return topViewController;
}

- (void)removeTopView
{
    MDViewController *topViewController = [self.viewControllerStack objectAtIndex:[self.viewControllerStack count] - 1];
    [topViewController.view removeFromSuperview];
}

- (void)addTopView
{
    MDViewController *topViewController = [self.viewControllerStack objectAtIndex:[self.viewControllerStack count] - 1];
    
    if(self.containerWindow)
        [self.containerWindow.contentView addSubview:topViewController.view];
    else
        [self.containerView addSubview:topViewController.view];
}

@end
