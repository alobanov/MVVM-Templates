//
//  ProfileModuleViewController.m
//  VPSTemplatesExample
//
//  Created by Aleksey Lobanov on 14/12/2016.
//  Copyright © 2016 Homemade. All rights reserved.
//

#import "ProfileModuleViewController.h"

// protocol
#import "ProfileModuleViewOutput.h"

// libs

// categories

// models

// managers & services

// views

@implementation ProfileModuleViewController

#pragma mark - Methods of live circle

- (void)viewDidLoad {
	[super viewDidLoad];

	[self.output didTriggerViewReadyEvent];
}

- (void)dealloc {
    NSLog(@"- ProfileModuleViewController dead!");
}

#pragma mark - Methods ProfileModuleViewInput

- (void)setupInitialState {
	// In this place occurs setting of view parameters, related of it live circle (create view, animation and etc)
}

@end
