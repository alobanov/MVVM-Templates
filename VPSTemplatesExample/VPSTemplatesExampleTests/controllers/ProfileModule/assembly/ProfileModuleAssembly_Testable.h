//
//  ProfileModuleAssembly_Testable.h
//  VPSTemplatesExample
//
//  Created by Aleksey Lobanov on 14/12/2016.
//  Copyright © 2016 Homemade. All rights reserved.
//

#import "ProfileModuleAssembly.h"

@class ProfileModuleViewController;
@class ProfileModulePresenter;
@class ProfileModuleRouter;

/**
 @author Aleksey Lobanov

 Extension, который делает приватные методы фабрики открытыми для тестирования.
 */
@interface ProfileModuleAssembly ()

@property (str, nonatomic, readonly) ProfileModuleViewController *controller;
@property (strong, nonatomic, readonly) ProfileModuleRouter *router;
@property (strong, nonatomic, readonly) ProfileModulePresenter *presenter;

@end
