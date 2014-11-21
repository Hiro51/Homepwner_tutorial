//
//  BNRItemStore.m
//  Homepwner_tutorial
//
//  Created by TsujinoHiroyuki on 11/21/14.
//  Copyright (c) 2014 Big Nerd Ranch. All rights reserved.
//

#import "BNRItemStore.h"
#import "BNRItem.h"

@interface BNRItemStore()

@property (nonatomic) NSMutableArray *privateItems;

@end

@implementation BNRItemStore

+ (instancetype) sharedStore {
    static BNRItemStore *sharedStore = nil;
    // Do I need to create a shared store?
    if (!sharedStore) {
        sharedStore = [[self alloc] initPrivate];
    }
    return sharedStore;
}

// If a programmer calls [[BNRItemStore alloc] init] let him know the error of his ways
- (instancetype) init {
    @throw [NSException exceptionWithName:@"Singleton" reason:@"Use +[BNRItemStore sharedStore]" userInfo:nil];
    
    return nil;
}

// Here is the real (secret) initializer
- (instancetype) initPrivate {
    self = [super init];
    if (self) {
        _privateItems = [[NSMutableArray alloc] init];
    }
    return self;
}

- (NSArray *) allItems {
    return self.privateItems;
}

- (BNRItem *) createItem {
    BNRItem *item = [BNRItem randomItem];
    [self.privateItems addObject:item];
    return item;
}

@end
