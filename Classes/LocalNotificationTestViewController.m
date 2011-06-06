//
//  LocalNotificationTestViewController.m
//  LocalNotificationTest
//
//  Created by Stephan Eletzhofer on 06.06.11.
//  Copyright 2011 Nexiles GmbH. All rights reserved.
//

#import "LocalNotificationTestViewController.h"

@interface LocalNotificationTestViewController ()

- (void)scheduleNotification;

@end

@implementation LocalNotificationTestViewController

static int dbg = 1;

@synthesize datePicker;
@synthesize fireButton;

#pragma mark -
#pragma mark Actions

-(void)fireButtonPressed:(id)sender
{
    DBG(@"sender=%@", sender);

    [self scheduleNotification];
}

#pragma mark -
#pragma mark View Handling

-(void)viewDidLoad
{
    DBGS;

    self.datePicker.date = [NSDate dateWithTimeIntervalSinceNow:0];
    [super viewDidLoad];
}

- (void)viewDidUnload {
    // Release any retained subviews of the main view.
    // e.g. self.myOutlet = nil;
}

#pragma mark -
#pragma mark Local Notification Scheduling

- (void)scheduleNotification
{
    DBGS;
 
    UILocalNotification *localNotif = [[UILocalNotification alloc] init];
    if (localNotif == nil)
        return;

    localNotif.fireDate = self.datePicker.date;
    localNotif.timeZone = [NSTimeZone defaultTimeZone];
 
    localNotif.alertBody = @"Alert!";
    localNotif.alertAction = NSLocalizedString(@"View Details", nil);
 
    localNotif.soundName = UILocalNotificationDefaultSoundName;
    localNotif.applicationIconBadgeNumber = 1;
 
    [[UIApplication sharedApplication] scheduleLocalNotification:localNotif];
    [localNotif release];
}


#pragma mark -
#pragma mark Memory Handling

- (void)didReceiveMemoryWarning {
    // Releases the view if it doesn't have a superview.
    [super didReceiveMemoryWarning];
    
    // Release any cached data, images, etc that aren't in use.
}



- (void)dealloc {
    self.fireButton = nil;
    self.datePicker = nil;
    [super dealloc];
}

@end

// vim: set ts=4 sw=4 expandtab tw=78 : 
