//
//  AlexAppEntities.m
//  AlexNSCollectionView
//
//  Created by AlexWu on 3/22/14.
//  Copyright (c) 2014 AlexWu. All rights reserved.
//

#import "AlexAppEntities.h"

@implementation AlexAppEntities

- (id)initWithTitle:(NSString*)title image:(NSImage*)image {
    if ((self = [super init])) {
        self.name = title;
        self.image = image;
    }
    return self;
}

@end
