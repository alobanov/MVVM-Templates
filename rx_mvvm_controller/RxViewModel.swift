//
//  RxViewModel.swift
//  Dribbble
//
//  Created by Lobanov Aleksey on 08.09.16.
//  Copyright © 2016 Lobanov Aleksey. All rights reserved.
//

import Foundation
import RxSwift

// MARK: - Enum Values
enum LoadingState: Equatable {
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
func == (lhs: LoadingState, rhs: LoadingState) -> Bool {
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

protocol RxModelOutput {
  var loadingState: Observable<LoadingState> {get}
  var displayError: Observable<NSError> {get}
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
  
  func handleResponse<E>(_ response: Observable<E>) -> Observable<E> {
    return response.map { (event) -> E in
      self._loadingState.value = .normal
      return event
    }.do(onError: { (err) in
      let e = err as NSError
      self._displayError.value = e
      self._loadingState.value = .error
    })
  }
}
