//
//  LLList.m
//  LinkedList
//
//  Created by Omar Gudino on 10/15/12.
//  Copyright (c) 2012 Omar Gudino. All rights reserved.
//

#import "LLList.h"
#import "LLNode.h"

@implementation LLList

- (id)init
{
    self = [super init];
    if (self) {
        self.numberOfNodes = 0;
    }
    return self;
}

- (void)insertNodeWithValue:(NSString *)value
{
    LLNode *newNode;
    LLNode *currentNode;
    
    newNode = [[LLNode alloc] initWithValue:value];
    
    if (self.headNode == nil) {
        self.headNode = newNode;
    } else {
        currentNode = self.headNode;
        while (currentNode.nextNode ) {
            currentNode = currentNode.nextNode;
        }
        currentNode.nextNode = newNode;
    }
    self.numberOfNodes++;
}

- (void)deleteNodeAtIndex:(NSInteger)index
{
    LLNode *deleteNode;
    LLNode *currentNode;
    if (index != 0) {
        currentNode = [self findNodeAtIndex:index - 1];
        deleteNode = currentNode.nextNode;
        currentNode.nextNode = deleteNode.nextNode;
        deleteNode = nil;
    } else {
        deleteNode = self.headNode;
        self.headNode = deleteNode.nextNode;
        deleteNode = nil;
    }
    self.numberOfNodes--;
}

- (LLNode *)findNodeAtIndex:(NSInteger)index
{
    LLNode *currentNode;
    currentNode = self.headNode;
    
    for (NSInteger i = 0; i <= index ; i++)
    {
        if (i == index) {
            return currentNode;
        }
        currentNode = currentNode.nextNode;
    }
    return nil;
    
}

- (NSString *) iterateListString
{
    LLNode *currentNode;
    NSMutableString *iteratedListString;
    
    if (!self.headNode) {
        return  @"";
    }
    
    iteratedListString = [NSMutableString string];
    
    currentNode = self.headNode;
    [iteratedListString appendFormat:@"%@\n",currentNode.value];
    
    while (currentNode.nextNode) {
        currentNode = currentNode.nextNode;
        [iteratedListString appendFormat:@"%@\n",currentNode.value];
    }
    
    return iteratedListString;
}

@end
