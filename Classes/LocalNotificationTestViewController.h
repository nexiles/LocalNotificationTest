//
//  LocalNotificationTestViewController.h
//  LocalNotificationTest
//
//  Created by Stephan Eletzhofer on 06.06.11.
//  Copyright 2011 Nexiles GmbH. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface LocalNotificationTestViewController : UIViewController {
	UIDatePicker *_datePicker;
	UIButton     *_fireButton;
}

@property (nonatomic, retain) IBOutlet UIDatePicker *datePicker;
@property (nonatomic, retain) IBOutlet UIButton *fireButton;

-(void)fireButtonPressed:(id)sender;

@end

