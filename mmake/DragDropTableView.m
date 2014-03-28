#import "DragDropTableView.h"

@implementation DragDropTableView
- (void) awakeFromNib
{
	// Register to accept filename drag/drop
    [super awakeFromNib];
	[self registerForDraggedTypes:[NSArray arrayWithObjects:NSFilenamesPboardType, nil]];
    [self setTarget:self];
    //[self setDataSource:self];

    [self setAcceptsTouchEvents:YES];
    [self setAction:NSSelectorFromString(@"doubleClick:")];
    
}

- (NSDragOperation)draggingEntered:(id <NSDraggingInfo>)sender
{
	// Need the delegate hooked up to accept the dragged item(s) into the model
	if ([self delegate]==nil)
	{
		return NSDragOperationNone;
	}
	
	if ([[[sender draggingPasteboard] types] containsObject:NSFilenamesPboardType])
	{
		return NSDragOperationCopy;
	}
	
	return NSDragOperationNone;
}

// Work around a bug from 10.2 onwards
- (NSDragOperation)draggingSourceOperationMaskForLocal:(BOOL)isLocal
{
	return NSDragOperationEvery;
}

// Stop the NSTableView implementation getting in the way
- (NSDragOperation)draggingUpdated:(id <NSDraggingInfo>)sender
{
	return [self draggingEntered:sender];
}

- (BOOL)performDragOperation:(id <NSDraggingInfo>)sender
{
	int i;
	NSPasteboard *pboard;
	pboard = [sender draggingPasteboard];
	if ([[pboard types] containsObject:NSFilenamesPboardType])
	{
		id delegate = [self delegate];
		NSArray *filenames = [pboard propertyListForType:NSFilenamesPboardType];
		if ([delegate respondsToSelector:@selector(acceptFilenameDrag:)])
		{
			for (i=0;i<[filenames count];i++)
			{
				[delegate performSelector:@selector(acceptFilenameDrag:) withObject:[filenames objectAtIndex:i]];
			}
		}
		return YES;
	}
	return NO;
}	

- (void) doubleClick: (id)sender

{
    
    NSInteger rowNumber = [self clickedRow];
    NSTableColumn* images = [self tableColumnWithIdentifier:@"image"];
    NSImage* image = (NSImage*)[images dataCellForRow:rowNumber];
    [[self delegate] performSelector:@selector(updateMapArray:) withObject:image];
    NSLog(@"Double Clicked.%@ ",image);
    
}

@end
