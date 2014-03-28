#import "Controller.h"

@implementation Controller

- (void) awakeFromNib
{
	filenames = [[NSMutableArray alloc] init];
    images = [[NSMutableArray alloc] init];
    mapImages = [[NSMutableArray alloc] init];
}

- (void) acceptFilenameDrag:(NSString *) filename
{
    NSImage* i = [[NSImage alloc]initWithContentsOfFile:filename];
    //ImageData* image = [[ImageData alloc]initWithTitle:filename thumbImage:i];
    [imageArrayController addObject:i];
    
    NSArray *SeparatedArray = [[NSArray alloc]init];
    
    SeparatedArray =[filename componentsSeparatedByString:@"/"];
    
    filename = [SeparatedArray lastObject];
    //[arrayController addObject: filename];
}

@end
