//
//  ModuleAssembly.m
//  VPSTemplatesExample
//
//  Created by Aleksey Lobanov on 20/02/2017.
//  Copyright © 2017 Homemade. All rights reserved.
//

#import "ModuleAssembly.h"

#import "ModuleViewController.h"
#import "ModuleViewModel.h"
#import "ModuleRouter.h"

@interface ModuleAssembly ()

@property (strong, nonatomic) ModuleViewController *controller;
@property (strong, nonatomic) ModuleRouter *router;
@property (strong, nonatomic) ModuleViewModel *viewModel;

@end

@implementation ModuleAssembly

- (void)assembly:(ModuleViewController *)vc {
    self.controller = vc;
    self.viewModel = [[ModuleViewModel alloc] init];
    self.router = [ModuleRouter new];

    // Dependencies
    self.controller.output = self.viewModel;
    self.viewModel.view = self.controller;
    self.viewModel.router = self.router;
}
@end
