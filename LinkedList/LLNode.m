//
//  LLNode.m
//  LinkedList
//
//  Created by Omar Gudino on 10/14/12.
//  Copyright (c) 2012 Omar Gudino. All rights reserved.
//

#import "LLNode.h"

@implementation LLNode

- (id)initWithValue:(NSString*)value
{
    self = [super init];
    if (self) {
        _value = value;
    }
    return self;
}

@end
