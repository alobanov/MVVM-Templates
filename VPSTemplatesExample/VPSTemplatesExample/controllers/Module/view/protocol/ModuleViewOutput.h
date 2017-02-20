//
//  ModuleViewOutput.h
//  VPSTemplatesExample
//
//  Created by Aleksey Lobanov on 20/02/2017.
//  Copyright © 2017 Homemade. All rights reserved.
//

#import <Foundation/Foundation.h>

@protocol ModuleViewOutput <NSObject>
@required;
/**
 @author Aleksey Lobanov

 Method informed presenter about view is ready for work
 */
- (void)didTriggerViewReadyEvent;

@end
