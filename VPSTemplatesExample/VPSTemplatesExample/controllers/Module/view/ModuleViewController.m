//
//  ModuleViewController.m
//  VPSTemplatesExample
//
//  Created by Aleksey Lobanov on 20/02/2017.
//  Copyright © 2017 Homemade. All rights reserved.
//

#import "ModuleViewController.h"

// protocol
#import "ModuleViewOutput.h"

// libs

// categories

// models

// managers & services

// views

@interface ModuleViewController()

// properties

@end

@implementation ModuleViewController

#pragma mark - Methods of live circle

- (void)viewDidLoad {
	[super viewDidLoad];

	[self.output didTriggerViewReadyEvent];
}

- (void)dealloc {
    NSLog(@"- ModuleViewController dead!");
}

#pragma mark - Methods ModuleViewInput

- (void)setupInitialState {
	// In this place occurs setting of view parameters, related of it live circle (create view, animation and etc)
}

@end
