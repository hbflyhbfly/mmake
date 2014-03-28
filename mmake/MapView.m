//
//  MapView.m
//  mmake
//
//  Created by Syuuhi on 14-3-27.
//  Copyright (c) 2014年 周飞. All rights reserved.
//

#import "MapView.h"

@implementation MapView

- (id)initWithFrame:(NSRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        // Initialization code here.
        NSImage* a = [NSImage imageNamed:@"1_1.png"];
        NSImageView* b = [[NSImageView alloc]init];
        b.image = a;
        [self addSubview:b];
    }
    return self;
}

- (void)drawRect:(NSRect)dirtyRect
{
    [super drawRect:dirtyRect];
    
    // Drawing code here.
}

-(void)touchesBeganWithEvent:(NSEvent *)event{
    
}

@end
