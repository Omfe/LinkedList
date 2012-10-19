//
//  LLNode.h
//  LinkedList
//
//  Created by Omar Gudino on 10/14/12.
//  Copyright (c) 2012 Omar Gudino. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface LLNode : UIView

@property (strong, nonatomic) NSString *value;
@property (strong, nonatomic) LLNode *nextNode;

- (id)initWithValue:(NSString *)value;

@end
