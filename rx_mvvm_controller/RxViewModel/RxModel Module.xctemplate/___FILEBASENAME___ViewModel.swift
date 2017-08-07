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

protocol ___FILEBASENAMEASIDENTIFIER___ViewOutput {
  func configure(input: ___FILEBASENAMEASIDENTIFIER___ViewModel.Input) -> ___FILEBASENAMEASIDENTIFIER___ViewModel.Output
}

class ___FILEBASENAMEASIDENTIFIER___ViewModel: RxViewModelType, RxViewModelModuleType, ___FILEBASENAMEASIDENTIFIER___ViewOutput {
  
  // MARK: In/Out parameters
  struct InputDependencies {
    
  }
  
  struct Input {
    
  }
  
  struct Output {
    let title: Observable<String>
    let state: Observable<LoadingState>
    let error: Observable<NSError>
  }
  
  // Mark: - Dependencies
  private var dp: InputDependencies
  private var moduleInputData: ModuleInputData
  
  // Mark: - Properties
  private var title = Observable.just("Title")
  private var modelState: RxViewModelStateProtocol = RxViewModelState()
  
  // MARK: - initializer
  init(dependencies: InputDependencies, moduleInputData: ModuleInputData) {
    self.dp = dependencies
    self.moduleInputData = moduleInputData
  }
  
  // MARK: - ___FILEBASENAMEASIDENTIFIER___ViewOutput
  func configure(input: Input) -> Output {
    return Output(title: title.asObservable(),
                  state: modelState.state.asObservable(),
                  error: modelState.error.asObservable())
  }
  
  // MARK: - Module configuration
  func configureModule(input: ModuleInput?) -> ModuleOutput {
    
    //configure module output
    return ModuleOutput()
  }
  
  // MARK: - Additional

  deinit {
    print("-- ___FILEBASENAMEASIDENTIFIER___ViewModel dead")
  }
}
