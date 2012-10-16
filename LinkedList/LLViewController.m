//
//  LLViewController.m
//  LinkedList
//
//  Created by Omar Gudino on 10/14/12.
//  Copyright (c) 2012 Omar Gudino. All rights reserved.
//

#import "LLViewController.h"

@interface LLViewController () <UIPickerViewDataSource, UIPickerViewDelegate>
@property (weak, nonatomic) IBOutlet UIView *nodesView;
@property (weak, nonatomic) IBOutlet UITextView *iteratedNodesTextView;
@property (weak, nonatomic) IBOutlet UITextField *insertPositionBox;
@property (weak, nonatomic) IBOutlet UIPickerView *positionFinder;
@property (weak, nonatomic) IBOutlet UIButton *insertButton;
@property (weak, nonatomic) IBOutlet UIButton *deleteButton;
@property (weak, nonatomic) IBOutlet UIButton *findButton;
@property (weak, nonatomic) IBOutlet UIButton *iterateButton;

@end

@implementation LLViewController


#pragma mark - Views didLoad/unLoad
- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - UIPickerViewDataSource Method
- (NSInteger)numberOfComponentsInPickerView:(UIPickerView *)pickerView
{
    return 1;
}

#pragma mark - IBAction methods
- (IBAction)insertWasPressed:(id)sender
{
    
    
}

- (IBAction)deleteWasPressed:(id)sender
{
    
}

- (IBAction)findWasPressed:(id)sender
{
    
}

- (IBAction)iterateWasPressed:(id)sender
{
    
}

@end
