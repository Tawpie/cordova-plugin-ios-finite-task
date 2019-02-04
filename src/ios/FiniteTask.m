//
//  FiniteTask.m
//  Copyright 2019 K. Hansen but no rights reserved
//  Modified from the Lee Crossley original by pasting in Apple's sample code
//

#import "Cordova/CDV.h"
#import "Cordova/CDVViewController.h"
#import "FiniteTask.h"

static UIBackgroundTaskIdentifier bgTask;

@implementation FiniteTask

+ (void) initialize
{
    bgTask = UIBackgroundTaskInvalid;
}

- (void) start:(CDVInvokedUrlCommand*)command;
{
  bgTask = [[UIApplication sharedApplication] beginBackgroundTaskWithName:@"onPauseTasks" expirationHandler:^{
      // Clean up any unfinished task business by marking where you
      // stopped or ending the task outright.
    [[UIApplication sharedApplication] endBackgroundTask:bgTask];
      bgTask = UIBackgroundTaskInvalid;
  }];
 
  // Start the long-running task and return immediately.
  dispatch_async(dispatch_get_global_queue(DISPATCH_QUEUE_PRIORITY_DEFAULT, 0), ^{
 
    // Do the work associated with the task, preferably in chunks.
 
    [[UIApplication sharedApplication] endBackgroundTask:bgTask];
    bgTask = UIBackgroundTaskInvalid;
  });
}

@end
