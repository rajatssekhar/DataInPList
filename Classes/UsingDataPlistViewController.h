//
//  UsingDataPlistViewController.h
//  UsingDataPlist
//
//  Created by Raja T S Sekhar on 1/31/11.
//  Copyright 2011 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>

#define kFilename @"data.plist"

@interface UsingDataPlistViewController : UIViewController {

	IBOutlet UITextField *category;
	IBOutlet UITextField *product;
	IBOutlet UITextField *rate;
}

@property (nonatomic, retain) UITextField *category;
@property (nonatomic, retain) UITextField *product;
@property (nonatomic, retain) UITextField *rate;

- (NSString *)dataFilePath;

- (IBAction) saveList;

@end

