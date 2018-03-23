//
//  ___FILENAME___
//  ___PROJECTNAME___
//
//  Created by ___FULLUSERNAME___ on ___DATE___.
//  Copyright (c) ___YEAR___ ___ORGANIZATIONNAME___. All rights reserved.
//
//  In this case:
//    1. `child` module - this develop module
//    2. `parent` module - module or coordinator, that present this develop module
//

import Foundation
import RxSwift

extension ___VARIABLE_sceneName___ViewModel {
  // MARK: - initial module data
  //   Immutable data, structures, for configure module
  struct ModuleInputData {
    
  }
  
  // MARK: - module input structure
  // 
  // Examples:
  // 1. Parent module may have send some signals to this
  //   sequence. Child (this) module subscribe to sequence.
  //
  //   var inputSignal:PublishSubject<Bool>
  // 

  struct ModuleInput {
    
  }
  
  // MARK: - module output structure
  // 
  // Examples:
  // 1. Parent module may have subscribe to sequency
  //   below for waitnig data
  //
  //   var result:Observable<LoginResponse>
  // 

  struct ModuleOutput {
    
  }
}
