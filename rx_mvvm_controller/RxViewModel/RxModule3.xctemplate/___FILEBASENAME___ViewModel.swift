//
//  ___FILENAME___
//  ___PROJECTNAME___
//
//  Created by ___FULLUSERNAME___ on ___DATE___.
//  Copyright (c) ___YEAR___ ___ORGANIZATIONNAME___. All rights reserved.
//

import Foundation
import RxCocoa
import RxSwift

public protocol ___VARIABLE_sceneName___ViewOutput {
    func configure(input: ___VARIABLE_sceneName___ViewModel.Input) -> ___VARIABLE_sceneName___ViewModel.Output
}

public class ___VARIABLE_sceneName___ViewModel: RxViewModelType, RxViewModelModuleType, ___VARIABLE_sceneName___ViewOutput {
    // MARK: In/Out struct

    public struct InputDependencies {}

    public struct Input {
        let appearState: Signal<ViewAppearState>
    }

    public struct Output {
        let title: Driver<String>
        let state: Driver<ModelState>
    }

    // MARK: Dependencies

    private let dp: InputDependencies
    private let moduleInputData: ModuleInputData

    // MARK: Properties

    private let bag = DisposeBag()
    private let modelState = BehaviorRelay<ModelState>(value: .unknown)

    // MARK: Observables

    private let moduleAction = PublishRelay<ModuleAction>()

    // MARK: - initializer

    public init(dependencies: InputDependencies, moduleInputData: ModuleInputData) {
        dp = dependencies
        self.moduleInputData = moduleInputData
    }

    private var start: Binder<ViewAppearState> {
        return Binder(self) { _, _ in }
    }

    // MARK: - ___VARIABLE_sceneName___ViewOutput

    public func configure(input: Input) -> Output {
        // Configure input
        input.appearState.filter { $0 == .didLoad }.emit(to: start).disposed(by: bag)

        // Configure output
        return Output(
            title: Driver.just("___VARIABLE_sceneName___"),
            state: modelState.asDriver(onErrorJustReturn: .unknown)
        )
    }

    // MARK: - Module configuration

    public func configureModule(input _: ModuleInput) -> ModuleOutput {
        // Configure input signals

        // Configure module output
        return ModuleOutput(
            moduleAction: moduleAction.asSignal()
        )
    }

    // MARK: - Additional

    deinit {
        print("-- ___VARIABLE_sceneName___ViewModel dead")
    }
}

/// Module struct

public extension ___VARIABLE_sceneName___ViewModel {
    // MARK: - initial module data

    struct ModuleInputData {}

    // MARK: - module input structure

    struct ModuleInput {}

    // MARK: - module output structure

    enum ModuleAction {}

    struct ModuleOutput {
        let moduleAction: Signal<ModuleAction>
    }
}
