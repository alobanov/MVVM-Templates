//
//  ProfileModuleModuleInput.h
//  VPSTemplatesExample
//
//  Created by Aleksey Lobanov on 14/12/2016.
//  Copyright © 2016 Homemade. All rights reserved.
//

#import <Foundation/Foundation.h>

@protocol ProfileModuleModuleInput
@required;
/**
 @author Aleksey Lobanov

 Methods initialization of base configuration of current module
 */
- (void)configureModule;

@end
