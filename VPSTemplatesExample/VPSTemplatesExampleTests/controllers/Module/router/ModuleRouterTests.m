//
//  ModuleRouterTests.m
//  VPSTemplatesExample
//
//  Created by Aleksey Lobanov on 20/02/2017.
//  Copyright © 2017 Homemade. All rights reserved.
//

#import <XCTest/XCTest.h>
#import <OCMock/OCMock.h>

#import "ModuleRouter.h"

@interface ModuleRouterTests : XCTestCase

@property (nonatomic, strong) ModuleRouter *router;

@end

@implementation ModuleRouterTests

#pragma mark - Настройка окружения для тестирования

- (void)setUp {
    [super setUp];

    self.router = [[ModuleRouter alloc] init];
}

- (void)tearDown {
    self.router = nil;

    [super tearDown];
}

@end
