//
//  UIAlertController+Info.m
//  UIAlertController+Info
//
//  Created by Ken M. Haggerty on 1/3/15.
//  Copyright (c) 2015 Eureka Valley Co. All rights reserved.
//

#pragma mark - // NOTES (Private) //

#pragma mark - // IMPORTS (Private) //

#import "UIAlertController+Info.h"
#import "AKDebugger.h"
#import <objc/runtime.h>

#pragma mark - // DEFINITIONS (Private) //

static char infoKey;

@implementation UIAlertController (Info)

#pragma mark - // SETTERS AND GETTERS //

- (void)setInfo:(NSDictionary *)info
{
    [AKDebugger logMethod:METHOD_NAME logType:AKLogTypeMethodName methodType:AKMethodTypeSetter tags:nil message:nil];
    
    objc_setAssociatedObject(self, &infoKey, info, OBJC_ASSOCIATION_RETAIN_NONATOMIC);
}

- (NSDictionary *)info
{
    [AKDebugger logMethod:METHOD_NAME logType:AKLogTypeMethodName methodType:AKMethodTypeGetter tags:nil message:nil];
    
    return objc_getAssociatedObject(self, &infoKey);
}

#pragma mark - // INITS AND LOADS //

#pragma mark - // PUBLIC METHODS //

#pragma mark - // DELEGATED METHODS //

#pragma mark - // OVERWRITTEN METHODS //

#pragma mark - // PRIVATE METHODS //

@end
