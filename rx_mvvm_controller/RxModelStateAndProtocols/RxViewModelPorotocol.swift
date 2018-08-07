//
//  RxViewModelProtocols.swift
//  Lobanov Aleksey
//
//  Created by Lobanov Aleksey on 08.09.16.
//  Copyright © 2016 All rights reserved.
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
