//
//  ___FILENAME___
//  ___PROJECTNAME___
//
//  Created by ___FULLUSERNAME___ on ___DATE___.
//  Copyright (c) ___YEAR___ ___ORGANIZATIONNAME___. All rights reserved.
//

import Foundation
import RxSwift
import RxCocoa

protocol ___VARIABLE_sceneName___ViewOutput {
  func configure(input: ___VARIABLE_sceneName___ViewModel.Input) -> ___VARIABLE_sceneName___ViewModel.Output
}

class ___VARIABLE_sceneName___ViewModel: RxViewModelType, RxViewModelModuleType, ___VARIABLE_sceneName___ViewOutput {
  
  // MARK: In/Out struct
  struct InputDependencies {
    
  }
  
  struct Input {
    let appearState: Observable<ViewAppearState>
  }
  
  struct Output {
    let title: Observable<String>
    let state: Observable<ModelState>
  }
  
  // MARK: Dependencies
  private let dp: InputDependencies
  private let moduleInputData: ModuleInputData
  
  // MARK: Properties
  private let bag = DisposeBag()
  private let modelState: RxViewModelStateProtocol = RxViewModelState()
  
  // MARK: Observables
  private let title = Observable.just("___VARIABLE_sceneName___")
  private let outputModuleAction = PublishSubject<OutputModuleActionType>()
  
  // MARK: - initializer
  
  init(dependencies: InputDependencies, moduleInputData: ModuleInputData) {
    self.dp = dependencies
    self.moduleInputData = moduleInputData
  }
  
  // MARK: - ___VARIABLE_sceneName___ViewOutput
  
  func configure(input: Input) -> Output {
    // Configure input
    input.appearState.subscribe(onNext: { [weak self] (state) in
      switch state {
        case .didLoad:
          self?.start()
        default:
          break
      }
    }).disposed(by: bag)
    
    // Configure output
    return Output(
      title: title.asObservable(),
      state: modelState.state.asObservable()
    )
  }
  
  // MARK: - Module configuration
  
  func configureModule(input: ModuleInput) -> ModuleOutput {
    // Configure input signals
    
    // Configure module output
    return ModuleOutput(
      moduleAction: outputModuleAction.asObservable()
    )
  }
  
  // MARK: - Additional

  func start() {

  }

  deinit {
    print("-- ___VARIABLE_sceneName___ViewModel dead")
  }
}
