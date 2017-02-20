//
//  ModuleViewInput.h
//  VPSTemplatesExample
//
//  Created by Aleksey Lobanov on 20/02/2017.
//  Copyright © 2017 Homemade. All rights reserved.
//

#import <Foundation/Foundation.h>

@protocol ModuleViewInput <NSObject>
@required;
/**
 @author Aleksey Lobanov

 Method setup initial view state
 */
- (void)setupInitialState;

@end
