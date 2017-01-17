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

protocol ___FILEBASENAMEASIDENTIFIER___ModuleInput {
  
}

protocol ___FILEBASENAMEASIDENTIFIER___Output: RxModelOutput {
  var router: ___FILEBASENAMEASIDENTIFIER___RouterInput! {get}
  var title: Variable<String> {get}
  func confRx()
}

protocol ___FILEBASENAMEASIDENTIFIER___Input: class {
//  func show(error: NSError)
}

class ___FILEBASENAMEASIDENTIFIER___ViewModel: RxViewModel, ___FILEBASENAMEASIDENTIFIER___Output, ___FILEBASENAMEASIDENTIFIER___ModuleInput {
  
  // MARK:- dependencies
  fileprivate weak var view: ___FILEBASENAMEASIDENTIFIER___Input!
  var router: ___FILEBASENAMEASIDENTIFIER___RouterInput!
  
  // MARK:- properties
  // ___FILEBASENAMEASIDENTIFIER___Output
  var title = Variable<String>("Title")
  
  // Private
  
  // MARK:- init
  init(dependencies:(
    view: ___FILEBASENAMEASIDENTIFIER___Input,
    router: ___FILEBASENAMEASIDENTIFIER___RouterInput
    )) {
    self.view = dependencies.view
    self.router = dependencies.router
    
    super.init()
  }
  
  // Output
  func confRx() {
    
  }
  
  // MARK: - Additional
  
  deinit {
    print("-- ___FILEBASENAMEASIDENTIFIER___ViewModel dead")
  }
}

// MARK: - Additional helpers
extension ___FILEBASENAMEASIDENTIFIER___ViewModel {
  
}

// MARK: - Network
extension ___FILEBASENAMEASIDENTIFIER___ViewModel {
  
}

