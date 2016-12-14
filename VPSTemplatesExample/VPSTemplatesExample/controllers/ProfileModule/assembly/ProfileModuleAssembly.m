//
//  ProfileModuleAssembly.m
//  VPSTemplatesExample
//
//  Created by Aleksey Lobanov on 14/12/2016.
//  Copyright © 2016 Homemade. All rights reserved.
//

#import "ProfileModuleAssembly.h"

#import "ProfileModuleViewController.h"
#import "ProfileModulePresenter.h"
#import "ProfileModuleRouter.h"

@interface ProfileModuleAssembly ()

@property (strong, nonatomic) ProfileModuleViewController *controller;
@property (strong, nonatomic) ProfileModuleRouter *router;
@property (strong, nonatomic) ProfileModulePresenter *presenter;

@end

@implementation ProfileModuleAssembly

- (void)assembly:(ProfileModuleViewController *)vc {
    self.controller = vc;
    self.presenter = [[ProfileModulePresenter alloc] init];
    self.router = [ProfileModuleRouter new];

    // Dependencies
    self.controller.output = self.presenter;
    self.presenter.view = self.controller;
    self.presenter.router = self.router;
}
@end
