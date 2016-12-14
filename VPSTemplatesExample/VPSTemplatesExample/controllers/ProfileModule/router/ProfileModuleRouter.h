//
//  ProfileModuleRouter.h
//  VPSTemplatesExample
//
//  Created by Aleksey Lobanov on 14/12/2016.
//  Copyright © 2016 Homemade. All rights reserved.
//

#import <UIKit/UIKit.h>

#import "ProfileModuleRouterInput.h"

@interface ProfileModuleRouter : NSObject <ProfileModuleRouterInput>

- (instancetype)initWithController:(__kindof UIViewController *)controller;

@end
