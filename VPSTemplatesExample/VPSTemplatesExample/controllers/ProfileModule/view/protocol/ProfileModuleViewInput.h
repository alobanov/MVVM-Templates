//
//  ProfileModuleViewInput.h
//  VPSTemplatesExample
//
//  Created by Aleksey Lobanov on 14/12/2016.
//  Copyright © 2016 Homemade. All rights reserved.
//

#import <Foundation/Foundation.h>

@protocol ProfileModuleViewInput <NSObject>
@required;
/**
 @author Aleksey Lobanov

 Method setup initial view state
 */
- (void)setupInitialState;

@end
