//
//  ModuleViewModel.h
//  VPSTemplatesExample
//
//  Created by Aleksey Lobanov on 20/02/2017.
//  Copyright © 2017 Homemade. All rights reserved.
//

#import "ModuleViewOutput.h"
#import "ModuleModuleInput.h"

@protocol ModuleViewInput;
@protocol ModuleRouterInput;

@interface ModuleViewModel : NSObject <ModuleModuleInput, ModuleViewOutput>

- (instancetype)initWithSomeService:(id)workService;

@property (nonatomic, weak) id<ModuleViewInput> view;
@property (nonatomic, strong) id<ModuleRouterInput> router;

@end
