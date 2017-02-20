//
//  ModuleViewController.h
//  VPSTemplatesExample
//
//  Created by Aleksey Lobanov on 20/02/2017.
//  Copyright © 2017 Homemade. All rights reserved.
//

#import <UIKit/UIKit.h>

// #import "UIViewController+StoryboardInstantiable.h"

#import "ModuleViewInput.h"

@protocol ModuleViewOutput;

@interface ModuleViewController : UIViewController <ModuleViewInput>

@property (nonatomic, strong) id<ModuleViewOutput> output;

@end
