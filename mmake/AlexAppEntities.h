//
//  AlexAppEntities.h
//  AlexNSCollectionView
//
//  Created by AlexWu on 3/22/14.
//  Copyright (c) 2014 AlexWu. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface AlexAppEntities : NSObject
@property (nonatomic,retain)NSImage *image;
@property (nonatomic,copy)  NSString *name;
- (id)initWithTitle:(NSString*)title image:(NSImage*)image;
@end
