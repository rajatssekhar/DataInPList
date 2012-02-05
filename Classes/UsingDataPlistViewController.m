//
//  UsingDataPlistViewController.m
//  UsingDataPlist
//
//  Created by Raja T S Sekhar on 1/31/11.
//  Copyright 2011 __MyCompanyName__. All rights reserved.
//

#import "UsingDataPlistViewController.h"

@implementation UsingDataPlistViewController

@synthesize category;
@synthesize product;
@synthesize rate;

/*
// The designated initializer. Override to perform setup that is required before the view is loaded.
- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil {
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}
*/

/*
// Implement loadView to create a view hierarchy programmatically, without using a nib.
- (void)loadView {
}
*/



// Implement viewDidLoad to do additional setup after loading the view, typically from a nib.
- (void)viewDidLoad {
	NSString *filePath = [self dataFilePath]; 
	if ([[NSFileManager defaultManager] fileExistsAtPath:filePath]) {
		NSArray *array = [[NSArray alloc] initWithContentsOfFile:filePath]; 
		category.text = [array objectAtIndex:0]; 
		product.text = [array objectAtIndex:1]; 
		rate.text = [array objectAtIndex:2];
		[array release];
	}
    [super viewDidLoad];
}

- (NSString *) dataFilePath {
	NSArray *paths = NSSearchPathForDirectoriesInDomains(NSDocumentDirectory, NSUserDomainMask, YES); 
	NSString *documentsDirectory = [paths objectAtIndex:0]; 
	return [documentsDirectory stringByAppendingPathComponent:kFilename];
	
}

- (IBAction) saveList {
	NSMutableArray *array = [[NSMutableArray alloc] init]; 
	[array addObject:category.text]; 
	[array addObject:product.text]; 
	[array addObject:rate.text];
	[array writeToFile:[self dataFilePath] atomically:YES]; 
	[array release];
}

/*
// Override to allow orientations other than the default portrait orientation.
- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation {
    // Return YES for supported orientations
    return (interfaceOrientation == UIInterfaceOrientationPortrait);
}
*/

- (void)didReceiveMemoryWarning {
	// Releases the view if it doesn't have a superview.
    [super didReceiveMemoryWarning];
	
	// Release any cached data, images, etc that aren't in use.
}

- (void)viewDidUnload {
	// Release any retained subviews of the main view.
	// e.g. self.myOutlet = nil;
}


- (void)dealloc {
    [super dealloc];
}

@end
