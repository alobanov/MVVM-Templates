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

protocol ___FILEBASENAMEASIDENTIFIER___Output {
  func configure(input: ___FILEBASENAMEASIDENTIFIER___ViewModel.Input) -> ___FILEBASENAMEASIDENTIFIER___ViewModel.Output
  func configureModule(input: ___FILEBASENAMEASIDENTIFIER___ViewModel.ModuleInput?) -> ___FILEBASENAMEASIDENTIFIER___ViewModel.ModuleOutput
}

class ___FILEBASENAMEASIDENTIFIER___ViewModel: RxViewModel, ___FILEBASENAMEASIDENTIFIER___Output, RxViewModelType {
  
  // MARK: In/Out module parameters
  struct ModuleInput {}
  struct ModuleOutput {}
  
  // MARK: In/Out parameters
  struct InputDependencies {
    let router: ___FILEBASENAMEASIDENTIFIER___RouterInput
  }
  
  struct Input {
    
  }
  
  struct Output {
    let title: Observable<String>
  }
  
  // MARK: - Dependencies
  var dp: InputDependencies
  
  // MARK: - Properties
  private var moduleInputData: ___FILEBASENAMEASIDENTIFIER___ModuleInputData?
  
  private var title: Observable<String> {
    return .just("Title")
  }
  
  // MARK :- initializer
  init(dependencies: InputDependencies, data: ___FILEBASENAMEASIDENTIFIER___ModuleInputData?) {
    self.dp = dependencies
    super.init()
  }
  
  // MARK :- ___FILEBASENAMEASIDENTIFIER___Output
  func configure(input: Input) -> Output {
    return Output(title: self.title)
  }
  
  func configureModule(input: ModuleInput?) -> ModuleOutput {
    //configure module output
    return ModuleOutput()
  }
  
  // MARK: - Additional

  deinit {
    print("-- ___FILEBASENAMEASIDENTIFIER___ViewModel dead")
  }
}
