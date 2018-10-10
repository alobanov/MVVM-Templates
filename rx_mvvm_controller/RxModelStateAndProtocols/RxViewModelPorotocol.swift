//
//  RxViewModel.swift
//  Creditclub
//
//  Created by Lobanov Aleksey on 08.09.16.
//  Copyright © 2016 All rights reserved.
//

import Foundation
import RxSwift
import RxCocoa

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

// MARK: - Enums

public enum ViewAppearState {
  case didLoad, didAppear, willAppear, didDisappear, willDisappear, didDeinit
}

public enum ModelState: Equatable {
  case normal
  // Content is available and not loading any content
  
  case empty
  // No Content is available
  
  case error(NSError)
  // Got an error
  
  case networkActivity
  // Network activity
  
  case unknown
  // State is not defiend yet
  
  // for implementation of Equatable
  var hash: Int {
    switch self {
    case .normal: return 0
    case .empty: return 1
    case .error: return 2
    case .networkActivity: return 3
    case .unknown: return 4
    }
  }
}

// MARK: - ModelState Equatable

public func == (lhs: ModelState, rhs: ModelState) -> Bool {
  return lhs.hash == rhs.hash
}

// MARK: - RxViewModelStateProtocol

protocol RxViewModelStateProtocol {
  var state: Observable<ModelState> { get }
  func isRequestInProcess() -> Bool
  func change(state: ModelState)
  func show(error: NSError)
}

// MARK: - RxViewModelState

class RxViewModelState: RxViewModelStateProtocol {
  var state: Observable<ModelState> {
    return _state.asObservable()
  }
  
  private var _state = BehaviorRelay<ModelState>(value: .unknown)
  
  func isRequestInProcess() -> Bool {
    return _state.value == .networkActivity
  }
  
  func change(state: ModelState) {
    _state.accept(state)
  }
  
  func show(error: NSError) {
    _state.accept(.error(error))
  }
}
