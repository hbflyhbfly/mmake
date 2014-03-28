//
//  AppDelegate.h
//  mmake
//
//  Created by Syuuhi on 14-3-27.
//  Copyright (c) 2014年 周飞. All rights reserved.
//

#import <Cocoa/Cocoa.h>

@interface AppDelegate : NSObject <NSApplicationDelegate,NSTableViewDelegate>
{
    NSImage* editingImage;
}
@property (assign) IBOutlet NSWindow *window;
@property (assign) IBOutlet NSCollectionView *map;
@property (assign) IBOutlet NSArrayController *arrayController;
@property (assign) IBOutlet NSArrayController *imageArrayController;
@property (assign) IBOutlet NSArrayController *mapArrayController;


@end
