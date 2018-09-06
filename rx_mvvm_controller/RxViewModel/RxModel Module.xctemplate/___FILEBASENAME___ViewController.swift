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
  private let viewAppearState = PublishSubject<ViewAppearState>()
  
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
    self.configureUI()
    
    do {
      try self.configureRx()
    } catch(let err) {
      print(err)
    }
    viewAppearState.onNext(.didLoad)
  }
  
  override func viewWillAppear(_ animated: Bool) {
    super.viewWillAppear(animated)
    viewAppearState.onNext(.willAppear)
  }
  
  override func viewDidAppear(_ animated: Bool) {
    super.viewDidAppear(animated)
    viewAppearState.onNext(.didAppear)
  }
  
  override func viewWillDisappear(_ animated: Bool) {
    super.viewWillDisappear(animated)
    viewAppearState.onNext(.willDisappear)
  }
  
  override func viewDidDisappear(_ animated: Bool) {
    super.viewDidDisappear(animated)
    viewAppearState.onNext(.didDisappear)
  }
  
  // MARK: - Configuration
  private func configureRx() throws {
    guard let model = viewModel else {
      fatalError("Please, set ViewModel as dependency for ___VARIABLE_sceneName___")
    }
    
    let input = ___VARIABLE_sceneName___ViewModel.Input(appearState: viewAppearState)
    let output = model.configure(input: input)
    
    output.title.subscribe(onNext: { [weak self] str in
      self?.navigationItem.title = str
    }).disposed(by: bag)
  }
  
  private func configureUI() {
    customView.configure(topLayoutGuide: topLayoutGuide, bottomLayoutGuide: bottomLayoutGuide)
  }
  
  // MARK: - Additional
  
  deinit {
    print("___VARIABLE_sceneName___ViewController deinit")
  }
}
