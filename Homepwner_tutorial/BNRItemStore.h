//
//  BNRItemStore.h
//  Homepwner_tutorial
//
//  Created by TsujinoHiroyuki on 11/21/14.
//  Copyright (c) 2014 Big Nerd Ranch. All rights reserved.
//

#import <Foundation/Foundation.h>

@class BNRItem;

@interface BNRItemStore : NSObject

@property (nonatomic, readonly)NSArray *allItems;

+ (instancetype) sharedStore;
- (BNRItem *) createItem;

@end
