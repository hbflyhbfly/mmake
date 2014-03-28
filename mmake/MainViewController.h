//
//  MainViewController.h
//  mmake
//
//  Created by Syuuhi on 14-3-27.
//  Copyright (c) 2014年 周飞. All rights reserved.
//

#import <Cocoa/Cocoa.h>
#import "MapView.h"

@interface MainViewController : NSViewController
{
    IBOutlet MapView* map;
}
- (IBAction)newPerson:(id)sender;

@end
