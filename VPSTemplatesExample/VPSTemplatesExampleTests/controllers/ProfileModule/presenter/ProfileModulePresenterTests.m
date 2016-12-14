//
//  ProfileModulePresenterTests.m
//  VPSTemplatesExample
//
//  Created by Aleksey Lobanov on 14/12/2016.
//  Copyright © 2016 Homemade. All rights reserved.
//

#import <XCTest/XCTest.h>
#import <OCMock/OCMock.h>

#import "ProfileModulePresenter.h"

#import "ProfileModuleViewInput.h"
#import "ProfileModuleRouterInput.h"

@interface ProfileModulePresenterTests : XCTestCase

@property (nonatomic, strong) ProfileModulePresenter *presenter;

@property (nonatomic, strong) id mockRouter;
@property (nonatomic, strong) id mockView;

@end

@implementation ProfileModulePresenterTests

#pragma mark - Настройка окружения для тестирования

- (void)setUp {
    [super setUp];

    self.presenter = [[ProfileModulePresenter alloc] init];

    self.mockRouter = OCMProtocolMock(@protocol(ProfileModuleRouterInput));
    self.mockView = OCMProtocolMock(@protocol(ProfileModuleViewInput));

    self.presenter.router = self.mockRouter;
    self.presenter.view = self.mockView;
}

- (void)tearDown {
    self.presenter = nil;

    self.mockView = nil;
    self.mockRouter = nil;

    [super tearDown];
}

#pragma mark - Тестирование методов ProfileModuleModuleInput

#pragma mark - Тестирование методов ProfileModuleViewOutput

- (void)testThatPresenterHandlesViewReadyEvent {
    // given


    // when
    [self.presenter didTriggerViewReadyEvent];

    // then
    OCMVerify([self.mockView setupInitialState]);
}

#pragma mark - Тестирование методов ProfileModuleInteractorOutput

@end
