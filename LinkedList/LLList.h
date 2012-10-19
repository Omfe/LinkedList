//
//  LLList.h
//  LinkedList
//
//  Created by Omar Gudino on 10/15/12.
//  Copyright (c) 2012 Omar Gudino. All rights reserved.
//

#import <Foundation/Foundation.h>

@class LLNode;

@interface LLList : NSObject

@property (strong, nonatomic) LLNode *headNode;
@property (assign, nonatomic) NSInteger numberOfNodes;


- (void)insertNodeWithValue:(NSString *)value;
- (void)deleteNodeAtIndex:(NSInteger)index;
- (LLNode *)findNodeAtIndex:(NSInteger)index;
- (NSString *)iterateListString;



@end
