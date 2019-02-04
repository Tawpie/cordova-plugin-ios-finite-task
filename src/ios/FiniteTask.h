//
//  FiniteTask.h
//  Copyright (c) 2019 K Hansen
//

#import "Foundation/Foundation.h"
#import "Cordova/CDV.h"

@interface FiniteTask : CDVPlugin

- (void) start:(CDVInvokedUrlCommand*)command;

@end
