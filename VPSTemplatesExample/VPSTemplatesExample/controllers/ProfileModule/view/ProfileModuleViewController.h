//
//  ProfileModuleViewController.h
//  VPSTemplatesExample
//
//  Created by Aleksey Lobanov on 14/12/2016.
//  Copyright © 2016 Homemade. All rights reserved.
//

#import <UIKit/UIKit.h>

// #import "UIViewController+StoryboardInstantiable.h"

#import "ProfileModuleViewInput.h"

@protocol ProfileModuleViewOutput;

@interface ProfileModuleViewController : UIViewController <ProfileModuleViewInput>

@property (nonatomic, strong) id<ProfileModuleViewOutput> output;

@end
