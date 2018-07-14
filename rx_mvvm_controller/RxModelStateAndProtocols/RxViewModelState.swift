//
//  ModelState.swift
//  Aleksey Lobanov
//
//  Created by Aleksey Lobanov on 06/08/2017.
//  Copyright © 2017 Aleksey Lobanov. All rights reserved.
//

import Foundation
import RxSwift
import RxCocoa

// MARK: - Enum Values

public enum ModelState: Equatable {
  /// Content is available and not loading any content
  case normal
  /// No Content is available
  case empty
  /// Got an error
  case error(NSError?)
  /// Is loading content
  case networkActivity
  // Prepearing state
  case unknown
}

// MARK: - Equatable

public func == (lhs: ModelState, rhs: ModelState) -> Bool {
  switch (lhs, rhs) {
  case (.normal, .normal):
    return true
  case (.empty, .empty):
    return true
  case (.error, .error):
    return true
  case (.networkActivity, .networkActivity):
    return true
  default:
    return false
  }
}

protocol RxViewModelStateProtocol {
  var state: Observable<ModelState> { get }
  var error: Observable<NSError> { get }
  
  func isRequestInProcess() -> Bool
  func change(state: ModelState)
  func show(error: NSError?)
  
  static func viewModelError() -> NSError
}

class RxViewModelState: RxViewModelStateProtocol {
  var state: Observable<ModelState> {
    return _state.asObservable()
  }
  
  var error: Observable<NSError> {
    return _error.asObservable().filterNil()
  }
  
  private var _state = BehaviorRelay<ModelState>(value: .unknown)
  private var _error = BehaviorRelay<NSError?>(value: nil)
  
  func isRequestInProcess() -> Bool {
    guard _state.value != .networkActivity else {
      return true
    }
    
    return false
  }
  
  func change(state: ModelState) {
    _state.accept(state)
  }
  
  func show(error: NSError?) {
    if let err = error {
      _error.accept(err)
    }
    
    defer {
      _state.accept(.error(error))
    }
  }
  
  static func viewModelError() -> NSError {
    return NSError.define(description: "Please, set ViewModel as dependency for \(#file)")
  }
}
