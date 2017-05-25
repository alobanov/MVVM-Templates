//
//  RxViewModel.swift
//  Creditclub
//
//  Created by Lobanov Aleksey on 08.09.16.
//  Copyright © 2016 Soft Media Lab. All rights reserved.
//

import Foundation
import RxSwift

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
  
  // MARK: Properties
  var description: String {
    switch self {
    case .normal: return "Loading success"
    /// No Content is available
    case .empty: return "Empty results"
    /// Got an error loading content
    case .error: return "Loading failure"
    /// Is loading content
    case .loading: return "Loading in process..."
    // Prepearing state
    case .unknown: return "Not defined loading state"
    }
  }
  
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

protocol RxViewModelType {
  associatedtype InputDependencies
  associatedtype Input
  associatedtype Output
  
  func configure(input: Input) -> Output
}

protocol RxViewModelModuleType {
  associatedtype ModuleInput
  associatedtype ModuleOutput
  
  func configureModule(input: ModuleInput) -> ModuleOutput
}

protocol RxModelOutput {
  var loadingState: Observable<LoadingState> {get}
  var displayError: Observable<NSError> {get}
}

protocol ViewModelType {
  associatedtype InputDependencies
}

class RxViewModel {
  let bag = DisposeBag()
  
  var displayError: Observable<NSError> {
    return _displayError.asObservable().skip(1)
  }
  
  var loadingState: Observable<LoadingState> {
    return _loadingState.asObservable()
  }
  
  internal var _loadingState = Variable<LoadingState>(.unknown)
  internal var _displayError = Variable<NSError>(NSError(domain: "", code: 0, userInfo: nil))
  
  init() {
    
  }
  
  func isRequestInProcess() -> Bool {
    guard _loadingState.value != .loading else { return true }
    _loadingState.value = .loading
    
    return false
  }
  
  static func bindingViewModelError() -> NSError {
    let userInfo = [
      NSLocalizedDescriptionKey: NSLocalizedString("RxViewModel",
                                                   value: "Please, set ViewModel as dependency for ViewController",
                                                   comment: "") ,
      NSLocalizedFailureReasonErrorKey: NSLocalizedString("RxViewModel",
                                                          value: "RxViewModel not set as dependency for ViewController",
                                                          comment: "")
    ]
    
    return NSError(domain: "RxViewModel", code: 0, userInfo: userInfo)
  }
}
