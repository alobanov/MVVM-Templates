//
//  ModuleAssemblyTests.m
//  VPSTemplatesExample
//
//  Created by Aleksey Lobanov on 20/02/2017.
//  Copyright © 2017 Homemade. All rights reserved.
//

#import <XCTest/XCTest.h>
#import <OCMock/OCMock.h>

#import "ModuleAssembly.h"
#import "ModuleAssembly_Testable.h"

#import "ModuleViewController.h"
#import "ModulePresenter.h"
#import "ModuleRouter.h"

@interface ModuleAssemblyTests : XCTestCase

@property (nonatomic, strong) ModuleAssembly *assembly;

@end

@implementation ModuleAssemblyTests

#pragma mark - Настройка окружения для тестирования

- (void)setUp {
    [super setUp];

    self.assembly = [[ModuleAssembly alloc] init];
    ModuleViewController *controller = [[ModuleViewController alloc] init];
    [self.assembly assembly:controller];
}

- (void)tearDown {
    self.assembly = nil;

    [super tearDown];
}

#pragma mark - Тестирование создания элементов модуля

- (void)testThatAssemblyCreatesViewController {
    // given
    NSArray *protocols = @[
                           @protocol(ModuleViewInput)
                           ];

    // when
    ModuleViewController *result = [self.assembly controller];

    // then
    for (Protocol *protocol in protocols) {
        XCTAssertTrue([result conformsToProtocol:protocol]);
    }

    XCTAssertTrue([result.output conformsToProtocol:@protocol(ModuleViewOutput)]);
}

- (void)testThatAssemblyCreatesPresenter {
    // given
    NSArray *protocols = @[
                           @protocol(ModuleModuleInput),
                           @protocol(ModuleViewOutput),
                           ];

    // when
    ModulePresenter *result = [self.assembly presenter];

    // then
    // then
    for (Protocol *protocol in protocols) {
        XCTAssertTrue([result conformsToProtocol:protocol]);
    }
}

- (void)testThatAssemblyCreatesRouter {
    // given
    NSArray *protocols = @[
                           @protocol(ModuleRouterInput)
                           ];

    // when
    ModuleRouter *result = [self.assembly router];

    // then
    for (Protocol *protocol in protocols) {
        XCTAssertTrue([result conformsToProtocol:protocol]);
    }
}

@end
