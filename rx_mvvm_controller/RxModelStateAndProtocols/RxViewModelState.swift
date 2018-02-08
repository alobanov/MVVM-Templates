//
//  ViewModelState.swift
//  Puls
//
//  Created by Lobanov Aleksey on 06/08/2017.
//  Copyright © 2017 Lobanov Aleksey. All rights reserved.
//

import Foundation
import RxSwift
import ALUtils

// MARK: - Enum Values
public enum LoadingState: Equatable {
  /// Content is available and not loading any content
  case normal
  /// No Content is available
  case empty
  /// Got an error loading content
  case error
  /// Is loading content
  case loading
  // Prepearing state
  case unknown
}

// MARK: - Equatable
public func == (lhs: LoadingState, rhs: LoadingState) -> Bool {
  switch (lhs, rhs) {
  case (.normal, .normal):
    return true
  case (.empty, .empty):
    return true
  case (.error, .error):
    return true
  case (.loading, .loading):
    return true
  default:
    return false
  }
}

protocol RxViewModelStateProtocol {
  var state: Observable<LoadingState> { get }
  var error: Observable<NSError> { get }
  
  func isRequestInProcess() -> Bool
  func change(state: LoadingState)
  func show(error: NSError?)
  
  static func viewModelError() -> NSError
}

class RxViewModelState: RxViewModelStateProtocol {
  var state: Observable<LoadingState> {
    return _state.asObservable()
  }
  
  var error: Observable<NSError> {
    return _error.asObservable().filterNil()
  }
  
  private var _state = Variable<LoadingState>(.unknown)
  private var _error = Variable<NSError?>(nil)
  
  func isRequestInProcess() -> Bool {
    guard _state.value != .loading else {
      return true
    }
    
    return false
  }
  
  func change(state: LoadingState) {
    _state.value = state
  }
  
  func show(error: NSError?) {
    if let err = error {
      _error.value = err
    }
    
    defer {
      _state.value = .error
    }
  }
  
  static func viewModelError() -> NSError {
    let userInfo = [
      NSLocalizedDescriptionKey: "Please, set ViewModel as dependency for \(#file)",
      NSLocalizedFailureReasonErrorKey: "View model is not define."
    ]
    
    return NSError(domain: "ru.alobanov", code: -1, userInfo: userInfo)
  }
}
