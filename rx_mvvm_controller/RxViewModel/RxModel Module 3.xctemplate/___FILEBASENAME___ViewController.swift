//
//  ___FILENAME___
//  ___PROJECTNAME___
//
//  Created by ___FULLUSERNAME___ on ___DATE___.
//  Copyright (c) ___YEAR___ ___ORGANIZATIONNAME___. All rights reserved.
//

import UIKit
import RxSwift
import RxCocoa

class ___VARIABLE_sceneName___ViewController: Controller<___VARIABLE_sceneName___View>  {
  
  // MARK: - Properties
  
  // Dependencies
  var viewModel: ___VARIABLE_sceneName___ViewOutput?
  
  // Private
    
  // MARK: - View lifecycle
  
  deinit {
    print("___VARIABLE_sceneName___ViewController deinit")
  }
  
  // MARK: - Configuration
  
  public override func configureUI() {
    customView.makeConstraints(viewController: self)
  }
  
  public override func configureRx() {
    guard let model = viewModel else {
      assertionFailure("Empty ViewModel")
      return
    }
    
    let input = ___VARIABLE_sceneName___ViewModel.Input(
      appearState: viewAppearState.asSignal()
    )
    
    let output = model.configure(input: input)
    
    output.title.drive(rx.title).disposed(by: bag)
    output.state.drive(stateHandler).disposed(by: bag)
  }
  
  // MARK: - Additional
  
  private var stateHandler: Binder<ModelState> {
    return Binder(self) { _self, state in
//      let loadState = (state == .networkActivity)
      if case let .error(error) = state {
        print(error)
      }
    }
  }
  
}
