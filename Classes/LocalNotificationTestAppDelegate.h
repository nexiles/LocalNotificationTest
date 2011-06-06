//
//  LocalNotificationTestAppDelegate.h
//  LocalNotificationTest
//
//  Created by Stephan Eletzhofer on 06.06.11.
//  Copyright 2011 Nexiles GmbH. All rights reserved.
//

#import <UIKit/UIKit.h>

@class LocalNotificationTestViewController;

@interface LocalNotificationTestAppDelegate : NSObject <UIApplicationDelegate> {
    UIWindow *window;
    LocalNotificationTestViewController *viewController;
}

@property (nonatomic, retain) IBOutlet UIWindow *window;
@property (nonatomic, retain) IBOutlet LocalNotificationTestViewController *viewController;

@end

