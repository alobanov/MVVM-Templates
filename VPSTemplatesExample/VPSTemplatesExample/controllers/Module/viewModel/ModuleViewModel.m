//
//  ModuleViewModel.m
//  VPSTemplatesExample
//
//  Created by Aleksey Lobanov on 20/02/2017.
//  Copyright © 2017 Homemade. All rights reserved.
//

#import "ModuleViewModel.h"

// protocol
#import "ModuleViewInput.h"
#import "ModuleRouterInput.h"

// libs

// categories

// models

// managers & services

// views

@interface ModuleViewModel()

// properties

@end

@implementation ModuleViewModel

- (instancetype)initWithSomeService:(id)workService {
    self = [super init];
    if (self) {
    	// configure
        [self configureViewModelOnInit];
    }
    return self;
}

- (void)configureViewModelOnInit {
}

- (void)dealloc {
    NSLog(@"-- ModuleViewModel dead!");
}

#pragma mark - Methods ModuleModuleInput

- (void)configureModule {
    // Base configuration of current module, not related with view state
}

#pragma mark - Methods ModuleViewOutput

- (void)didTriggerViewReadyEvent {
	[self.view setupInitialState];
}

#pragma maek - Additional methods

#pragma maek - Networking

@end
