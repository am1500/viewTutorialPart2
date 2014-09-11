//
//  AMViewController.m
//  viewTutorial
//
//  Created by Guest User on 9/10/14.
//  Copyright (c) 2014 Alejandro Mendoza. All rights reserved.
//

#import "AMGrid.h"
#import "AMViewController.h"

@interface AMViewController () {
    UIView* _gridView;
    UIButton* _button;
}

@end

@implementation AMViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    
    self.view.backgroundColor = [UIColor whiteColor];
    
    // create grid frame
    CGRect frame = self.view.frame;
    CGFloat x = CGRectGetWidth(frame)*.1;
    CGFloat y = CGRectGetWidth(frame)*.1;
    CGFloat size = MIN(CGRectGetWidth(frame), CGRectGetHeight(frame))*.80;
    
    CGRect gridFrame = CGRectMake(x, y, size, size);
    
    // create grid view
    _gridView = [[AMGrid alloc] initWithFrame:gridFrame];
    _gridView.backgroundColor = [UIColor blackColor];
    [self.view addSubview:_gridView];
    
    // create button
    CGFloat buttonSize = size/5.0;
    CGRect buttonFrame = CGRectMake(0,0,buttonSize,buttonSize);
    _button = [[UIButton alloc] initWithFrame:buttonFrame];
    _button.backgroundColor = [UIColor redColor];
    [_button setTitle:@"Hit me!" forState:UIControlStateNormal];
    [_button setTitleColor:[UIColor blueColor] forState:UIControlStateNormal];
    //_button.currentTitle = [NSString = @"Hit me"];
    [_gridView addSubview:_button];
    
    // create target for button
    [_button addTarget:self action:@selector(buttonPressed:) forControlEvents:UIControlEventTouchUpInside];
    
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)buttonPressed:(id)sender
{
    NSLog(@"You pressed thebutton!");
}

@end
