//
//  ProfileModuleRouterTests.m
//  VPSTemplatesExample
//
//  Created by Aleksey Lobanov on 14/12/2016.
//  Copyright © 2016 Homemade. All rights reserved.
//

#import <XCTest/XCTest.h>
#import <OCMock/OCMock.h>

#import "ProfileModuleRouter.h"

@interface ProfileModuleRouterTests : XCTestCase

@property (nonatomic, strong) ProfileModuleRouter *router;

@end

@implementation ProfileModuleRouterTests

#pragma mark - Настройка окружения для тестирования

- (void)setUp {
    [super setUp];

    self.router = [[ProfileModuleRouter alloc] init];
}

- (void)tearDown {
    self.router = nil;

    [super tearDown];
}

@end
