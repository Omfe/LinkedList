//
//  LLViewController.m
//  LinkedList
//
//  Created by Omar Gudino on 10/14/12.
//  Copyright (c) 2012 Omar Gudino. All rights reserved.
//

#import "LLViewController.h"
#import "LLList.h"
#import <QuartzCore/QuartzCore.h>

@interface LLViewController () <UIPickerViewDataSource, UIPickerViewDelegate>
@property (weak, nonatomic) IBOutlet UIScrollView *nodesScrollView;
@property (weak, nonatomic) IBOutlet UITextView *iteratedNodesTextView;
@property (weak, nonatomic) IBOutlet UITextField *insertPositionTextField;
@property (weak, nonatomic) IBOutlet UIPickerView *positionFinderPickerView;
@property (weak, nonatomic) IBOutlet UIButton *insertButton;
@property (weak, nonatomic) IBOutlet UIButton *deleteButton;
@property (weak, nonatomic) IBOutlet UIButton *findButton;
@property (weak, nonatomic) IBOutlet UIButton *iterateButton;

@property (strong, nonatomic) LLList *list;

@end

@implementation LLViewController


#pragma mark - Views didLoad/unLoad
- (void)viewDidLoad
{
    [super viewDidLoad];
	self.list = [[LLList alloc] init];
    
    self.iteratedNodesTextView.layer.borderColor = [UIColor blackColor].CGColor;
    self.iteratedNodesTextView.layer.borderWidth = 4;
}



#pragma mark - UIPickerViewDataSource Method
- (NSInteger)numberOfComponentsInPickerView:(UIPickerView *)pickerView
{
    return 1;
}

- (NSInteger)pickerView:(UIPickerView *)pickerView numberOfRowsInComponent:(NSInteger)component
{
    return self.list.numberOfNodes;
}

- (NSString *)pickerView:(UIPickerView *)pickerView titleForRow:(NSInteger)row forComponent:(NSInteger)component
{
    return [NSString stringWithFormat:@"%i", row];
}

#pragma mark - IBAction methods
- (IBAction)insertWasPressed:(id)sender
{
    if (self.insertPositionTextField.text.length != 0) {
        [self.list insertNodeWithValue:self.insertPositionTextField.text];
        [self.positionFinderPickerView reloadAllComponents];
    }
}

- (IBAction)deleteWasPressed:(id)sender
{
    [self.positionFinderPickerView reloadAllComponents];
}

- (IBAction)findWasPressed:(id)sender
{
    //dibujar
    
}

- (IBAction)iterateWasPressed:(id)sender
{
    self.iteratedNodesTextView.text = [self.list iterateListString];
}

@end
