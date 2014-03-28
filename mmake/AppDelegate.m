//
//  AppDelegate.m
//  mmake
//
//  Created by Syuuhi on 14-3-27.
//  Copyright (c) 2014年 周飞. All rights reserved.
//

#import "AppDelegate.h"
#import "AlexAppEntities.h"

@implementation AppDelegate

- (void)applicationDidFinishLaunching:(NSNotification *)aNotification
{

}

- (void)awakeFromNib
{
    
    [_map setSelectable:YES];
    [self gatherAppData];
}

- (void)gatherAppData
{
    @autoreleasepool{
        for (int i = 0;i<6 ;i++){
            AlexAppEntities *item = [[AlexAppEntities alloc]initWithTitle:@"sds" image:NULL] ;
            [_mapArrayController addObject:item];
        }
    }
    
}


- (void) acceptFilenameDrag:(NSString *) filename
{
    NSImage* i = [[NSImage alloc]initWithContentsOfFile:filename];
    [_imageArrayController addObject:i];
    
    NSArray *SeparatedArray = [[NSArray alloc]init];
    
    SeparatedArray =[filename componentsSeparatedByString:@"/"];
    
    filename = [SeparatedArray lastObject];
    [_arrayController addObject: filename];
}

-(void) updateEditMap:(NSImage*)image{
    editingImage = image;
}
@end
