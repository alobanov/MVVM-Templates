//
//  ModuleRouter.h
//  VPSTemplatesExample
//
//  Created by Aleksey Lobanov on 20/02/2017.
//  Copyright © 2017 Homemade. All rights reserved.
//

#import <UIKit/UIKit.h>

#import "ModuleRouterInput.h"

@interface ModuleRouter : NSObject <ModuleRouterInput>

- (instancetype)initWithController:(__kindof UIViewController *)controller;

@end
