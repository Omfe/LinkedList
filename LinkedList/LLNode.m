//
//  LLNode.m
//  LinkedList
//
//  Created by Omar Gudino on 10/14/12.
//  Copyright (c) 2012 Omar Gudino. All rights reserved.
//

#import "LLNode.h"

@interface LLNode ()

@property (strong, nonatomic) IBOutlet UIView *nodeView;
@property (strong, nonatomic) IBOutlet UILabel *nodeValueLabel;
@property (strong, nonatomic) IBOutlet UIView *arrowView;

@end

@implementation LLNode

- (id)initWithValue:(NSString*)value
{
    self = [super initWithFrame:CGRectMake(0, 0, 100, 50)];
    if (self) {
        [self setupViews];
        self.value = value;
    }
    return self;
}

- (void)setNextNode:(LLNode *)nextNode
{
    if (_nextNode != nextNode) {
        _nextNode = nextNode;
    }
    
    if (_nextNode) {
        self.arrowView.hidden = NO;
        return;
    }
    self.arrowView.hidden = YES;
}

- (void)setValue:(NSString *)value
{
    if (_value != value) {
        _value = value;
        self.nodeValueLabel.text = value;
    }
}


#pragma mark - Public Methods
- (void)flashBackground
{
    [UIView animateWithDuration:0.4 animations:^{
        self.nodeView.backgroundColor = [UIColor colorWithRed:0.6980392157 green:0 blue:0 alpha:1];
    } completion:^(BOOL finished) {
        if (finished) {
            [UIView animateWithDuration:0.4 animations:^{
                self.nodeView.backgroundColor = [UIColor whiteColor];
            }];
        }
    }];
}


#pragma mark - Private Methods
- (void)setupViews
{
    CGRect frame;
    
    [[UINib nibWithNibName:@"LLCircleView" bundle:nil] instantiateWithOwner:self options:nil];
    [[UINib nibWithNibName:@"LLArrowView" bundle:nil] instantiateWithOwner:self options:nil];
    
    frame = self.nodeView.frame;
    frame.origin.x = 0;
    self.nodeView.frame = frame;
    
    frame = self.arrowView.frame;
    frame.origin.x = self.nodeView.frame.size.width;
    self.arrowView.frame = frame;
    
    [self addSubview:self.nodeView];
    [self addSubview:self.arrowView];
    self.arrowView.hidden = YES;
}

@end
