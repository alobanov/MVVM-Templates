//
//  ProfileModuleRouter.m
//  VPSTemplatesExample
//
//  Created by Aleksey Lobanov on 14/12/2016.
//  Copyright © 2016 Homemade. All rights reserved.
//

#import "ProfileModuleRouter.h"

@interface ProfileModuleRouter()

@property (weak, nonatomic) UIViewController *from;

@end

@implementation ProfileModuleRouter

- (instancetype)initWithController:(__kindof UIViewController *)controller
{
    self = [super init];
    if (self) {
        self.from = controller;
    }
    return self;
}

#pragma mark - Methods ProfileModuleRouterInput

@end
