/* Controller */

#import <Cocoa/Cocoa.h>

@interface Controller : NSObject
{
	NSMutableArray *filenames;
    IBOutlet NSArrayController *arrayController;
    
    NSMutableArray *images;
    IBOutlet NSArrayController *imageArrayController;
    
    NSMutableArray *mapImages;
    IBOutlet NSArrayController *mapImageArrayController;
}
@end
