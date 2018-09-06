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
  var error: Observable<NSError> { get }
  
  func isRequestInProcess() -> Bool
  func change(state: ModelState)
  func show(error: NSError)
}

// MARK: - RxViewModelState
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
    return _state.value == .networkActivity
  }
  
  func change(state: ModelState) {
    _state.accept(state)
    switch state {
    case .error(let error):
      _error.accept(error)
    default: break
    }
  }
  
  func show(error: NSError) {
    _error.accept(error)
    _state.accept(.error(error))
  }
  
  static func viewModelError() -> NSError {
    let userInfo = [
      NSLocalizedDescriptionKey: "Please, set ViewModel as dependency for \(#file)",
      NSLocalizedFailureReasonErrorKey: "View model is not define."
    ]
    
    let code = -1
    
    return NSError(domain: "com.rxmvvm.template", code: code, userInfo: userInfo)
  }

}
