//
//  RxViewModel.swift
//  Creditclub
//
//  Created by Lobanov Aleksey on 08.09.16.
//  Copyright © 2016 Soft Media Lab. All rights reserved.
//

import Foundation
import RxSwift

protocol RxViewModelType {
  associatedtype InputDependencies
  associatedtype Input
  associatedtype Output
  
  func configure(input: Input) -> Output
}

protocol RxViewModelModuleType {
  associatedtype ModuleInput
  associatedtype ModuleOutput
  
  func configureModule(input: ModuleInput?) -> ModuleOutput
}

protocol RxModelOutput {
  var modelState: Observable<LoadingState> {get}
  var modelError: Observable<NSError> {get}
}
