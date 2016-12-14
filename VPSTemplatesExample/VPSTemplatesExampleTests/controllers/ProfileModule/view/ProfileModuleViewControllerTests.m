//
//  ProfileModuleViewControllerTests.m
//  VPSTemplatesExample
//
//  Created by Aleksey Lobanov on 14/12/2016.
//  Copyright © 2016 Homemade. All rights reserved.
//

#import <XCTest/XCTest.h>
#import <OCMock/OCMock.h>

#import "ProfileModuleViewController.h"

#import "ProfileModuleViewOutput.h"

@interface ProfileModuleViewControllerTests : XCTestCase

@property (nonatomic, strong) ProfileModuleViewController *controller;

@property (nonatomic, strong) id mockOutput;

@end

@implementation ProfileModuleViewControllerTests

#pragma mark - Настройка окружения для тестирования

- (void)setUp {
    [super setUp];

    self.controller = [[ProfileModuleViewController alloc] init];

    self.mockOutput = OCMProtocolMock(@protocol(ProfileModuleViewOutput));

    self.controller.output = self.mockOutput;
}

- (void)tearDown {
    self.controller = nil;

    self.mockOutput = nil;

    [super tearDown];
}

#pragma mark - Тестирование жизненного цикла

- (void)testThatControllerNotifiesPresenterOnDidLoad {
	// given

	// when
	[self.controller viewDidLoad];

	// then
	OCMVerify([self.mockOutput didTriggerViewReadyEvent]);
}

#pragma mark - Тестирование методов интерфейса

#pragma mark - Тестирование методов ProfileModuleViewInput

@end
