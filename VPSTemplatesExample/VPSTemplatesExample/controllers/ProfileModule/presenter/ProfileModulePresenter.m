//
//  ProfileModulePresenter.m
//  VPSTemplatesExample
//
//  Created by Aleksey Lobanov on 14/12/2016.
//  Copyright © 2016 Homemade. All rights reserved.
//

#import "ProfileModulePresenter.h"

// protocol
#import "ProfileModuleViewInput.h"
#import "ProfileModuleRouterInput.h"

// libs

// categories

// models

// managers & services

// views

@implementation ProfileModulePresenter

- (instancetype)initWithSomeService:(id)workService {
    self = [super init];
    if (self) {

    }
    return self;
}

- (void)dealloc {
    NSLog(@"-- ProfileModulePresenter dead!");
}

#pragma mark - Methods ProfileModuleModuleInput

- (void)configureModule {
    // Base configuration of current module, not related with view state
}

#pragma mark - Methods ProfileModuleViewOutput

- (void)didTriggerViewReadyEvent {
	[self.view setupInitialState];
}

#pragma mark - Methods ProfileModuleInteractorOutput

@end
