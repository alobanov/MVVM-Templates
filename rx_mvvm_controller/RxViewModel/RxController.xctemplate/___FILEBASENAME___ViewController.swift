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

public class ___VARIABLE_sceneName___ViewController: Controller<___VARIABLE_sceneName___View>, ControllerInOutType  {
  
  // Dependencies
  public struct Output {}
  
  public struct Input {}
  
  public struct Dependencies {}
  
  // MARK: - Properties
  
  // Private
  private var dp: Dependencies
    
  // MARK: - Initialization
  
  public init(dp: Dependencies) {
    self.dp = dp
    super.init(nibName: nil, bundle: nil)
  }
  
  required init?(coder: NSCoder) {
    fatalError("init(coder:) has not been implemented")
  }
  
  // MARK: - View lifecycle
  
  deinit {
    print("___VARIABLE_sceneName___ViewController deinit")
  }
  
  // MARK: - Configuration
  
  public func configure(input: Input) -> Output {
    return Output()
  }
  
  // MARK: - Configuration
  
  public override func configureUI() {
    customView.makeConstraints(viewController: self)
  }
  
  public override func configureRx() {
    
  }
  
  // MARK: - Additional
  
  private var stateHandler: Binder<ModelState> {
    return Binder(self) { base, state in
//      let loadState = (state == .networkActivity)
      if case let .error(error) = state {
        print(error)
      }
    }
  }
  
}
