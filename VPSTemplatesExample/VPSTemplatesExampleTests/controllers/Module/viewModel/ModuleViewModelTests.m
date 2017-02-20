//
//  ModuleViewModelTests.m
//  VPSTemplatesExample
//
//  Created by Aleksey Lobanov on 20/02/2017.
//  Copyright © 2017 Homemade. All rights reserved.
//

#import <XCTest/XCTest.h>
#import <OCMock/OCMock.h>

#import "ModulePresenter.h"

#import "ModuleViewInput.h"
#import "ModuleRouterInput.h"

@interface ModulePresenterTests : XCTestCase

@property (nonatomic, strong) ModulePresenter *presenter;

@property (nonatomic, strong) id mockRouter;
@property (nonatomic, strong) id mockView;

@end

@implementation ModulePresenterTests

#pragma mark - Настройка окружения для тестирования

- (void)setUp {
    [super setUp];

    self.presenter = [[ModulePresenter alloc] init];

    self.mockRouter = OCMProtocolMock(@protocol(ModuleRouterInput));
    self.mockView = OCMProtocolMock(@protocol(ModuleViewInput));

    self.presenter.router = self.mockRouter;
    self.presenter.view = self.mockView;
}

- (void)tearDown {
    self.presenter = nil;

    self.mockView = nil;
    self.mockRouter = nil;

    [super tearDown];
}

#pragma mark - Тестирование методов ModuleModuleInput

#pragma mark - Тестирование методов ModuleViewOutput

- (void)testThatPresenterHandlesViewReadyEvent {
    // given


    // when
    [self.presenter didTriggerViewReadyEvent];

    // then
    OCMVerify([self.mockView setupInitialState]);
}

#pragma mark - Тестирование методов ModuleInteractorOutput

@end
