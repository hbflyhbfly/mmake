//
//  AppDelegate.m
//  mmake
//
//  Created by Syuuhi on 14-3-27.
//  Copyright (c) 2014年 周飞. All rights reserved.
//

#import "AppDelegate.h"
#import "MainViewController.h"
@interface  AppDelegate()
@property (nonatomic,strong) IBOutlet MainViewController *masterViewController;
@end

@implementation AppDelegate

- (void)applicationDidFinishLaunching:(NSNotification *)aNotification
{
    // Insert code here to initialize your application
    [self.window.contentView addSubview:self.masterViewController.view];
    self.masterViewController.view.frame = ((NSView*)self.window.contentView).bounds;
}

@end
