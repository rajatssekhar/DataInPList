//
//  UsingDataPlistAppDelegate.h
//  UsingDataPlist
//
//  Created by Raja T S Sekhar on 1/31/11.
//  Copyright 2011 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>

@class UsingDataPlistViewController;

@interface UsingDataPlistAppDelegate : NSObject <UIApplicationDelegate> {
    UIWindow *window;
    UsingDataPlistViewController *viewController;
}

@property (nonatomic, retain) IBOutlet UIWindow *window;
@property (nonatomic, retain) IBOutlet UsingDataPlistViewController *viewController;

@end

