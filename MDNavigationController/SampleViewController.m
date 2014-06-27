//
//  SampleViewController.m
//  MDNavigationController
//
//  Created by Michael Dautermann on 6/26/14.
//  Copyright (c) 2014 Michael Dautermann. All rights reserved.
//

#import "SampleViewController.h"
#import "MDNavigationController.h"

@interface SampleViewController ()
{
    NSInteger _valueOfText;
}
@end

@implementation SampleViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Initialization code here.
    }
    return self;
}

- (void)awakeFromNib
{
    NSArray *subviews = [self.view subviews];
    
    NSTextField *firstTextField = [subviews objectAtIndex:0];
    
    _valueOfText = [firstTextField.stringValue integerValue];
}

- (IBAction)nextButtonTouched:(id)sender
{
    SampleViewController *sampleVC;
    
    switch(_valueOfText)
    {
        case 1 :
            sampleVC = [[SampleViewController alloc] initWithNibName:@"SampleViewControllerTwo" bundle:nil];
            break;
        case 2 :
            sampleVC = [[SampleViewController alloc] initWithNibName:@"SampleViewControllerThree" bundle:nil];
            break;
        case 3 :
            sampleVC = [[SampleViewController alloc] initWithNibName:@"SampleViewControllerFour" bundle:nil];
            break;
        default :
            NSLog(@"nothing left to do here");

    }
    
    sampleVC.navigationController = self.navigationController;
    
    [self.navigationController pushViewController:sampleVC animated:YES];
}

- (IBAction)previousButtonTouched:(id)sender
{
    switch(_valueOfText)
    {
        case 1 :
            [NSApp terminate:self];
            break;
        default :
            [self.navigationController popViewControllerAnimated:YES];
    }
}

@end
