//
//  ProfileModuleAssemblyTests.m
//  VPSTemplatesExample
//
//  Created by Aleksey Lobanov on 14/12/2016.
//  Copyright © 2016 Homemade. All rights reserved.
//

#import <XCTest/XCTest.h>
#import <OCMock/OCMock.h>

#import "ProfileModuleAssembly.h"
#import "ProfileModuleAssembly_Testable.h"

#import "ProfileModuleViewController.h"
#import "ProfileModulePresenter.h"
#import "ProfileModuleRouter.h"

@interface ProfileModuleAssemblyTests : XCTestCase

@property (nonatomic, strong) ProfileModuleAssembly *assembly;

@end

@implementation ProfileModuleAssemblyTests

#pragma mark - Настройка окружения для тестирования

- (void)setUp {
    [super setUp];

    self.assembly = [[ProfileModuleAssembly alloc] init];
    ProfileModuleViewController *controller = [[ProfileModuleViewController alloc] init];
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
                           @protocol(ProfileModuleViewInput)
                           ];

    // when
    ProfileModuleViewController *result = [self.assembly controller];

    // then
    for (Protocol *protocol in protocols) {
        XCTAssertTrue([result conformsToProtocol:protocol]);
    }

    XCTAssertTrue([result.output conformsToProtocol:@protocol(ProfileModuleViewOutput)]);
}

- (void)testThatAssemblyCreatesPresenter {
    // given
    NSArray *protocols = @[
                           @protocol(ProfileModuleModuleInput),
                           @protocol(ProfileModuleViewOutput),
                           ];

    // when
    ProfileModulePresenter *result = [self.assembly presenter];

    // then
    // then
    for (Protocol *protocol in protocols) {
        XCTAssertTrue([result conformsToProtocol:protocol]);
    }
}

- (void)testThatAssemblyCreatesRouter {
    // given
    NSArray *protocols = @[
                           @protocol(ProfileModuleRouterInput)
                           ];

    // when
    ProfileModuleRouter *result = [self.assembly router];

    // then
    for (Protocol *protocol in protocols) {
        XCTAssertTrue([result conformsToProtocol:protocol]);
    }
}

@end
