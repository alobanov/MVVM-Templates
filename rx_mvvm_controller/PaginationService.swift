//
//  BasePaginationService.swift
//  Dribbble
//
//  Created by Lobanov Aleksey on 28.02.17.
//  Copyright © 2017 Lobanov Aleksey. All rights reserved.
//

import Foundation
import RxSwift

protocol NetworkPagination: NetworkServiceStateble {
  var loadNextPageTrigger: PublishSubject<Void> {get}
  var refreshTrigger: PublishSubject<Void> {get}
  var paginationState: BehaviorSubject<PaginationState> {get}
}

class PaginationService: NetworkService, NetworkPagination {
  
  // internal
  var page = 1
  let perPage = 10
  
  // Public
  var loadNextPageTrigger = PublishSubject<Void>()
  var refreshTrigger = PublishSubject<Void>()
  var paginationState = BehaviorSubject<PaginationState>(value: .firstPage)
  
  init(networking: Networking) {
    super.init(api: networking)
    
    self.configureRx()
  }
  
  func configureRx() {
    self.refreshTrigger
      .filter({ [unowned self] _ -> Bool in
        return !self.isRequestInProcess()
      })
      .subscribe(onNext: { [unowned self] _ in
        self.obtainFirstPage()
      }).addDisposableTo(bag)
    
    self.loadNextPageTrigger
      .filter({ [unowned self] _ -> Bool in
        return !self.isRequestInProcess()
      })
      .subscribe(onNext: { [unowned self] _ in
        self.obtainNextPage()
      }).addDisposableTo(bag)
  }
  
  func obtainNextPage() {
    self.page+=1
    self.obtainData(by: self.page)
  }
  
  func obtainFirstPage() {
    self.paginationState.onNext(.firstPage)
    self.page = 1
    self.obtainData(by: 1)
  }
  
  func obtainData(by page: Int) {
    // need override
  }
  
  deinit {
    print("---- BasePaginationService dead")
  }
}
