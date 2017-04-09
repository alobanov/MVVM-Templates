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

protocol ___FILEBASENAMEASIDENTIFIER___ModuleOutput: class {
  
}

struct FormLoanModuleInputParameters {}

protocol ___FILEBASENAMEASIDENTIFIER___ModuleInput {
  func configureWithRootModule(parameters: FormLoanModuleInputParameters)
}

protocol ___FILEBASENAMEASIDENTIFIER___Testable {
    // put here private methods for testing
}

protocol ___FILEBASENAMEASIDENTIFIER___Output: RxModelOutput {
  var router: ___FILEBASENAMEASIDENTIFIER___RouterInput! {get}
  var title: Observable<String> {get}
  func configureRx(/* put hear some drivers ;) */)
}

class ___FILEBASENAMEASIDENTIFIER___ViewModel: RxViewModel, ___FILEBASENAMEASIDENTIFIER___Output, ___FILEBASENAMEASIDENTIFIER___ModuleInput, ___FILEBASENAMEASIDENTIFIER___Testable {
  
  // MARK: Properties
  
  // Dependencies
  var router: ___FILEBASENAMEASIDENTIFIER___RouterInput!
  
  // Properties of ___FILEBASENAMEASIDENTIFIER___Output
  var title: Observable<String> {
    return .just("Title")
  }
  
  // Private
  
  // MARK:- initializer
  init(dependencies: InputDependencies) {
    self.router = dependencies.router
    
    super.init()
  }
  
  // Methods of ___FILEBASENAMEASIDENTIFIER___Output
  func configureRx() {
    
  }
  
  // ___FILEBASENAMEASIDENTIFIER___ModuleInput
  func configureWithRootModule(parameters: FormLoanModuleInputParameters) {
    // configure root module input
  }
  
  // MARK: - Additional
  
  deinit {
    print("-- ___FILEBASENAMEASIDENTIFIER___ViewModel dead")
  }
}

extension ___FILEBASENAMEASIDENTIFIER___ViewModel: ViewModelType {
  struct InputDependencies {
    let router: ___FILEBASENAMEASIDENTIFIER___RouterInput
  }
}

// MARK: - Additional helpers
extension ___FILEBASENAMEASIDENTIFIER___ViewModel {
  
}

// MARK: - Network
extension ___FILEBASENAMEASIDENTIFIER___ViewModel {
  
}

