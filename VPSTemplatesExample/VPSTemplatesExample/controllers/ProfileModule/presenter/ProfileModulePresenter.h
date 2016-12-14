//
//  ProfileModulePresenter.h
//  VPSTemplatesExample
//
//  Created by Aleksey Lobanov on 14/12/2016.
//  Copyright © 2016 Homemade. All rights reserved.
//

#import "ProfileModuleViewOutput.h"
#import "ProfileModuleModuleInput.h"

@protocol ProfileModuleViewInput;
@protocol ProfileModuleRouterInput;

@interface ProfileModulePresenter : NSObject <ProfileModuleModuleInput, ProfileModuleViewOutput>

- (instancetype)initWithSomeService:(id)workService;

@property (nonatomic, weak) id<ProfileModuleViewInput> view;
@property (nonatomic, strong) id<ProfileModuleRouterInput> router;

@end
