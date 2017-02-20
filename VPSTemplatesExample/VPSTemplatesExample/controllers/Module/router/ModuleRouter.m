//
//  ModuleRouter.m
//  VPSTemplatesExample
//
//  Created by Aleksey Lobanov on 20/02/2017.
//  Copyright © 2017 Homemade. All rights reserved.
//

#import "ModuleRouter.h"

@interface ModuleRouter()

@property (weak, nonatomic) UIViewController *from;

@end

@implementation ModuleRouter

- (instancetype)initWithController:(__kindof UIViewController *)controller
{
    self = [super init];
    if (self) {
        self.from = controller;
    }
    return self;
}

#pragma mark - Methods ModuleRouterInput

@end
