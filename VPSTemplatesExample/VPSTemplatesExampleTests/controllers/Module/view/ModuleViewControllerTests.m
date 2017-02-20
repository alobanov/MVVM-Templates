//
//  ModuleViewControllerTests.m
//  VPSTemplatesExample
//
//  Created by Aleksey Lobanov on 20/02/2017.
//  Copyright © 2017 Homemade. All rights reserved.
//

#import <XCTest/XCTest.h>
#import <OCMock/OCMock.h>

#import "ModuleViewController.h"

#import "ModuleViewOutput.h"

@interface ModuleViewControllerTests : XCTestCase

@property (nonatomic, strong) ModuleViewController *controller;

@property (nonatomic, strong) id mockOutput;

@end

@implementation ModuleViewControllerTests

#pragma mark - Настройка окружения для тестирования

- (void)setUp {
    [super setUp];

    self.controller = [[ModuleViewController alloc] init];

    self.mockOutput = OCMProtocolMock(@protocol(ModuleViewOutput));

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

#pragma mark - Тестирование методов ModuleViewInput

@end
