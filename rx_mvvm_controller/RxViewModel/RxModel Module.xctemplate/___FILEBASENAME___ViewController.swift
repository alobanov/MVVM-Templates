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

class ___VARIABLE_sceneName___ViewController: UIViewController {
  
  // MARK: - Properties
  
  // Dependencies
  var viewModel: ___VARIABLE_sceneName___ViewOutput?
  
  // Public
  var bag = DisposeBag()
  
  // Private
  private let viewAppearState = PublishRelay<ViewAppearState>()
  
  // IBOutlet & UI
  lazy var customView: ___VARIABLE_sceneName___View = {
    let customView = ___VARIABLE_sceneName___View(frame: CGRect(x: 0, y: 0, width: 320, height: 480))
    return customView
  }()
  
  // MARK: - View lifecycle
  override func loadView() {
    self.view = customView
  }
  
  override func viewDidLoad() {
    super.viewDidLoad()
    configureUI()
    configureRx()
    viewAppearState.accept(.didLoad)
  }
  
  override func viewWillAppear(_ animated: Bool) {
    super.viewWillAppear(animated)
    viewAppearState.accept(.willAppear)
  }
  
  override func viewDidAppear(_ animated: Bool) {
    super.viewDidAppear(animated)
    viewAppearState.accept(.didAppear)
  }
  
  override func viewWillDisappear(_ animated: Bool) {
    super.viewWillDisappear(animated)
    viewAppearState.accept(.willDisappear)
  }
  
  override func viewDidDisappear(_ animated: Bool) {
    super.viewDidDisappear(animated)
    viewAppearState.accept(.didDisappear)
  }
  
  deinit {
    print("___VARIABLE_sceneName___ViewController deinit")
  }
  
  // MARK: - Configuration
  private func configureRx() {
    guard let model = viewModel else {
      assertionFailure("Please, set ViewModel as dependency for ___VARIABLE_sceneName___")
      return
    }
    
    let input = ___VARIABLE_sceneName___ViewModel.Input(
      appearState: viewAppearState.asSignal()
    )
    let output = model.configure(input: input)
    
    output.title.drive(onNext: { [weak self] str in
      self?.navigationItem.title = str
    }).disposed(by: bag)
    
    output.state.drive(onNext: { [weak self] state in
      // state handler
      print(state)
    }).disposed(by: bag)
  }
  
  private func configureUI() {
    customView.makeConstraints(viewController: self)
  }
  
  // MARK: - Additional
  
}
