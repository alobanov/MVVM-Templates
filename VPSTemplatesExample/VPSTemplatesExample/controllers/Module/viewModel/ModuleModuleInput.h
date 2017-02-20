//
//  ModuleModuleInput.h
//  VPSTemplatesExample
//
//  Created by Aleksey Lobanov on 20/02/2017.
//  Copyright © 2017 Homemade. All rights reserved.
//

#import <Foundation/Foundation.h>

@protocol ModuleModuleInput
@required;
/**
 @author Aleksey Lobanov

 Methods initialization of base configuration of current module
 */
- (void)configureModule;

@end
