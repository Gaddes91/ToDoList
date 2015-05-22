//
//  ToDoItem.h
//  ToDoList
//
//  Created by Matthew Gaddes on 22/05/2015.
//  Copyright (c) 2015 Matthew Gaddes. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface ToDoItem : NSObject

@property NSString *itemName;
@property BOOL completed;
@property (readonly) NSDate *creationDate;

@end
