//
//  ModuleAssembly_Testable.h
//  VPSTemplatesExample
//
//  Created by Aleksey Lobanov on 20/02/2017.
//  Copyright © 2017 Homemade. All rights reserved.
//

#import "ModuleAssembly.h"

@class ModuleViewController;
@class ModulePresenter;
@class ModuleRouter;

/**
 @author Aleksey Lobanov

 Extension, который делает приватные методы фабрики открытыми для тестирования.
 */
@interface ModuleAssembly ()

@property (weak, nonatomic, readonly) ModuleViewController *controller;
@property (strong, nonatomic, readonly) ModuleRouter *router;
@property (strong, nonatomic, readonly) ModulePresenter *presenter;

@end
